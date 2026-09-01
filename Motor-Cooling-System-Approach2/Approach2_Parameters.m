% Specification for 3 pipe system


% Approach 2: Optimized Parallel Pipe Cooling System Parameters

% Load the data from the Excel file
data = readtable('drive_cycle_final2.xlsx');
time = data.Time;      
rpm = data.RPM;        
torque = data.Torque_Nm; 

cooling = struct(...
    'n_tubes', 40, ...          % Realistic internal radiator tubes
    'w_tube', 0.002, ...        % Width of a single tube (2 mm)
    'h_tube', 0.020, ...        % Height of a single tube (20 mm)
    'L_tube', 0.8000, ...       % Length of radiator pass (0.8 m)
    'w_radiator', 0.5000, ...   % Radiator width parameter for wall resistance
    'area_primary', 0.3000, ... % External radiator frontal area
    'area_fins', 2, ...         % External fin heat transfer area
    'fan_diameter', 0.4000, ...
    'fan_thickness', 0.0500, ...
    'cDrag', 2.5000, ...
    'denAir', 1.2000, ...
    'pumpArea', 0.000339, ...   % Matched to total parallel flow area
    'pipe1Length', 0.5000, ...
    'pipe1Dia', 0.012, ...      % 12 mm internal diameter for each of the 3 parallel pipes
    'pipe2Length', 0.5000, ...
    'pipe2Dia', 0.019 ...       % 19 mm internal diameter for the return pipe to tank
);
