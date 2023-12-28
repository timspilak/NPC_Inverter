%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Neutral Point clamped Inverter with Sinus PWM
% ausgewaehlte Kapitel Power Electronics WS 2023/24
% Tim Spilak 203864
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clear all
%% Simulation parameters
Ts = 1e-6;          % [ s ] sampling time simulation
Tsim = 4e-2;        % [ s ] simulation time
fc = 2000;          % [ Hz ] frequenc
Tc = 1/fc;          % [ s ] sampling time
TA = Tc;            % [ s ] sampling time

%% plant parameters
Ud = 700;           % [ V ] source voltage DC
RL = 10;            % [ Ohm ] load resistance
LL = 20e-3;         % [ H ] load inductance

%% normalization and limitation
Umax = Ud/2;
mmin = -0.95;
mmax = 0.95;

%% target specification
Uamp = Ud/2;
f = 50;             % [ Hz ] target frequency

%% time discrete controller
zR1 = 0.1;


