clearvars;
close all;

% constants in SI units
d = 5E-3;
vmax = 5;
Fmax = 20;
mass = logspace(-6,3,1000);

% for each mass solve: v/vmax + ln(1-v/vmax) + Fmax*d/(mass*vmax^2) = 0
% using fzero
for i=1:length(mass)
    func = @(v) d*Fmax/(mass(i)*vmax^2) + (v/vmax + log(1-v/vmax));
    
    % BUG FIX: if the sign of the function flips near v=vmax (within machine
    % precision), then vto=vmax
    if (sign(func(vmax-eps))~=sign(func(vmax-10*eps)))
        vto(i) = vmax;
    else 
        vto(i) = fzero(func,[0 vmax-10*eps]);
    end
end

% plot vto vs m
figure();
plot(mass,abs(vto),'.');
xlabel('Mass, $m$ [kg]','Interpreter','Latex');
ylabel('Take-off velocity, $v_\mathrm{to}$ [m/s]','Interpreter','Latex');
set(gca,'XScale','log');



