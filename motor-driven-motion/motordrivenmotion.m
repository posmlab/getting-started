clearvars;
close all;

% constants in SI units
d = 5E-3;
vmax = 5;
Fmax = 20;
mass = logspace(-6,3,1000);

% for each mass solve: v/vmax + ln(1-v/vmax) + Fmax*d/(mass*vmax^2) = 0


vto = zeros(1,length(mass));
for i=1:length(mass)
    func = @(v) d*Fmax/(mass(i)*vmax^2) + (v/vmax + log(1-v/vmax));
    
    %We'll numerically find the zeros to func.
    
    vs = linspace(0,vmax,1000); %create a vector of 1000 equally spaced numbers from 0 to vmax
    func_eval = zeros(size(vs)); % create a vector to hold the function value at each vs
    
    %store the values of the function between 0 and vmax in fun_eval
    for j=1:length(vs)
        func_eval(j)=func(vs(j));
    end
    
    %find the index of the closest number to zero in the
    [~,idx] = min(abs(func_eval));
    %assign the value of the function of that minimum as the vto for this
    %mass
    vto(i) = vs(idx);
    
    %Alternate Strategy:
    % using fzero
    % BUG FIX: if the sign of the function flips near v=vmax (within machine
    % precision), then vto=vmax
    
    %if (sign(func(vmax-eps))~=sign(func(vmax-10*eps)))
    %    vto(i) = 5;
    %else
    %    vto(i) = fzero(func,[0 vmax-10*eps]);
    %end
end

% plot vto vs m
figure();
plot(mass,abs(vto),'.');
xlabel('Mass, $m$ [kg]','Interpreter','Latex');
ylabel('Take-off velocity, $v_{to}$ [m/s]','Interpreter','Latex');
set(gca,'XScale','log');



