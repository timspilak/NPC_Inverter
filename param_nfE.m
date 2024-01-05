%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Neutral Point clamped Inverter with Sinus PWM
% ausgewaehlte Kapitel Power Electronics WS 2023/24
% Tim Spilak 203864
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clear all
%% Simulation parameters
Ts = 1e-6;          % [ s ] sampling time simulation
Tsim = 8e-2;        % [ s ] simulation time
fc = 8000;          % [ Hz ] frequenc
Tc = 1/fc;          % [ s ] sampling time
TA = Tc;            % [ s ] sampling time

%% plant parameters
Ud = 700;           % [ V ] source voltage DC
RN = 0.25;            % [ Ohm ] load resistance
LN = 1e-3;         % [ H ] load inductance

%% normalization and limitation
Umax = Ud/2;
mmin = -1;
mmax = 1;

%% target specification
Uamp = Ud/2;
f = 50;             % [ Hz ] target frequency

%% time discrete controller
zR1 = 0.1;


