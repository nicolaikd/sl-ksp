% Parameters

%%% Model parameters %%%%%

%% Rocket 
P_m_rocket              = 1000;             %[kg]       Mass of rocket
P_Cd_rocket             = 0.2;              %[-]        Rocket drag coefficient
P_A_front_rocket        = (2.6/2)^2 * pi;   %[m^2]   	Rocket drag coefficient  (assumed front of rocket is a cicle): r^2 * pi   

%% Mass calculator
P_mc_fuel_rocket        = 5776;             %[amount]  Amount of liquid fuel at launch
P_mc_wet_mass_rocket    = 101.197;          %[tons]    Wet mass of rocket - Mass of rocket and fuel at launch
P_mc_dry_mass_rocket    = 37.397;           %[tons]    Dry mass of rocket - Mass of rocket with no fuel


%% Control %%

%% Deacceleration throttle gain
P_ctr_deac_throttle_gain = 10;              % [-]?   Depended on time difference: 

%% Target altitude
P_x_target          = 10000;             % [m]   Target altitude for hover.
P_t_target          = 200;               % [s]   Initial quess of time in seconds to target height (should be set based on target altitude)
%{ 
    Important conditions is that "D_time_to_target_height" is always above "D_time_to_zero_vertical_velocity" in the "acceleration state".

    When engine is ON "D_time_to_zero_vertical_velocity" (acceleration state")  is
    increasing. 
%}

%%