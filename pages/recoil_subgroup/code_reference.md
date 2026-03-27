# Recoil Code Reference

This page serves as the documentation for the MATLAB scripts and functions used in the Recoil project. The code lives in the [posmlab/Recoil](https://github.com/posmlab) repository.

---

## Experimental Analysis

### findSpots.m

Detects dots on the first frame of our high-speed video. Identifies tracking markers (usually white) on the sample by binarizing the image and detecting bright (or dark) spots against the background.
| | |
|---|---|
| **Inputs** | `filepath` (path to video), `experimentNum` (integer) |
| **Outputs** | `bbox_final` (bounding boxes of detected dots), `startX`, `startCol` (crop boundaries), `pixel_per_mm` (spatial calibration) |
| **Interactive** | User draws lines on clamp edges to set the boundaries, then passes or rejects detected bounding boxes |

### computeRecoilPositionv4.m

Tracks dot positions across all frames uby sing cross-correlation template matching. Main tracking function that gives us position vs time data.
| | |
|---|---|
| **Inputs** | `filepath`, `experimentNum`, `material`, `load_mass`, `lookAheadFactor` (default 1.2), `debugMode_level` (0/1/2) |
| **Outputs** | `x_position_center` (dot positions in mm over time), `filename` (path to output tracking video) |
| **Calls** | `findSpots.m`, `findLastPosition.m` |
| **Produces** | `nDots_xPosition.csv` (time + dot positions), `track.avi` (annotated tracking video) |

### find_sync.m

Finds the synchronized frame between the high-speed camera and the force sensor by detecting when the solenoid taps. This is done by tracking a user-selected region where the solenoid tip increases pixel intensity and brightness.
| | |
|---|---|
| **Inputs** | `vidObj` (VideoReader), `experimentNumber`, `material`, `load_mass` |
| **Outputs** | `sync_idx` (frame index of sync event) |
| **Produces** | `tap_debug` video for verification |

### findLastPosition.m

Reads the experiment metadata and the last loading step CSV to find the final position before recoil
| | |
|---|---|
| **Inputs** | `experimentNumber` |
| **Outputs** | `lastPosition` (mm, includes any position offset) |

### recoil_processing.mlapp

Our main app for processing recoil data after an experiment is completed. Sychronizes camera video with force sensor data, creates a common time grid, and fits free-knot splines to position and force data. Outputs are stored in the workspace `final_analysis_E[N].mat`

- `positionPolynomial` — cell array of piecewise polynomial fits for each dot's position (mm)
- `forcePolynomial` — piecewise polynomial fit for the force sensor signal (N)
- `t0` — the synchronized start time of recoil

---

## Utilities

### ginputzp.m

Modified version of `ginput` that supports user zooming and panning during point selection. Used by the tracking scripts and others

### testBSFK.m

Test script for the B-Spline Free Knot fitting library. It generates noisy test data and fits a free-knot spline

### startup.m

This adds the Recoil root directory and `Simulating Recoil/` to the MATLAB path on startup, necessary for filepath and pointer stuff.

### ppdiff.m

Differentiates a piecewise polynomial returned by `spline` or `ppval` to compute velocity and acceleration from position polynomial fitting
| | |
|---|---|
| **Inputs** | `pp` (piecewise polynomial struct), `j` (derivative order, default 1) |
| **Outputs** | `qq` (differentiated piecewise polynomial) |
| **Author** | Jonas Lundgren |

---

## Simulation

### simulate_experiment.m

Viscoelastic recoil finite-difference solving driven by experimental parameters. Reads the experiment metadata and runs a 1D SLS + neo-Hookean simulation. Uses DMA-calibrated relaxation spectra hardcoded per material used.
| | |
|---|---|
| **Inputs** | `expnum`, `nx` (spatial nodes, default 20), `nt` (time steps, default 40000), `plot_stuff` (boolean) |
| **Outputs** | `resilience` (max KE / input energy), `K_max` (max kinetic energy, J), `maxPower` (max power, W) |
| **Calls** | `get_exp_info.m`, `get_c.m`, `get_linear_unlatching.m` |
| **Produces** | Plots (displacement, position, velocity, stress, strain, KE, power, loading/unloading, time scales) and `workspace.mat` saved to `Simulated Experiments/[expnum]/` |

### simulate_recoil.m

Version of simulate_experiment that takes physical parameters directly instead of reading from experiment metadata.
| | |
|---|---|
| **Inputs** | `L0` (equilibrium length, m), `e0` (initial strain), `M` (load mass, kg), `m` (spring mass, kg), `h` (thickness, m), `w` (width, m), `material` (string) |
| **Outputs** | `resilience`, `K_max`, `maxPower` |

### calcResilience.m

Calculates resilience and power from experimental data. Uses the quasi-static loading curve to get input energy, then uses polynomial fits from `recoil_processing` to find kinetic energy, CoM velocity, and power vs time.
| | |
|---|---|
| **Inputs** | `experimentNum`, `show_plots` (default true) |
| **Outputs** | `resilience`, `maxPower`, `maxKE`, `maxVcm`, `maxV_fromForce`, `delta_t` (time to first zero-crossing of force) |

### compute_inverse_dynamics.m

Computes the recoil force from position data using F = ma. Differentiates the position polynomial fits twice to find acceleration, then multiplies by mass distribution of dots.
| | |
|---|---|
| **Inputs** | `expnum` |
| **Outputs** | `Fnet` (net force array, N), `t_inv` (time array, s) |

---

## Simulation Helpers

### get_c.m

Finds the neo-Hookean parameter `c` from the second quasi-static loading curve (step3.csv). Normalizes by the material's modulus `E_inf`.
| | |
|---|---|
| **Inputs** | `expnum`, `plot_stuff` (default false) |
| **Outputs** | `c` (dimensionless neo-Hookean parameter) |

### get_exp_info.m

Returns all experiment and recoil key physical parameters in SI units from metadata
| | |
|---|---|
| **Inputs** | `expnum` |
| **Outputs** | `material`, `M` (load mass, kg), `w` (width, m), `h` (thickness, m), `e0` (initial strain), `m` (band mass, kg), `L0` (equilibrium length, m) |

### get_finalAnalysis_path.m

Returns the file path to the `final_analysis_E[N].mat` workspace for a given experiment number.

### get_sim_workspace.m

Returns the file path to the simulation `workspace.mat` for a given experiment number.

### get_linear_unlatching.m

Linear approximation of unlatching force as a function of time. Compares inverse dynamics force to the experiment force sensor to find crossing point, then returns function for linear ramp from initial force to zero.
| | |
|---|---|
| **Inputs** | `expnum` |
| **Outputs** | `linear_unlatching` (function handle: `t -> force`) |

---

## Comparison

### compare_expsim.m

Experiment vs Simulation, plotting center of mass position and force all versus time, and a raw position comparison and overlayed inverse dynamics force. This serves as verification and sanity check for our experiments
| | |
|---|---|
| **Inputs** | `expnum`, `CM` (use center-of-mass positions, default true) |
| **Calls** | `get_sim_workspace.m`, `get_finalAnalysis_path.m`, `compute_inverse_dynamics.m` |
