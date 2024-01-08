%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Neutral Point clamped Inverter mit Sinus PWM
% ausgewaehlte Kapitel Power Electronics WS 2023/24
% Tim Spilak 203864
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clear all
%% Definition der Zeiten
Ts = 1e-6;          % [ s ] Simulationsschrittweite
Tsim = 4e-2;        % [ s ] Simulationsdauer

fc = 2000;          % [ Hz ] PWM-Frequenz Stromrichter
Tc = 1/fc;          % [ s ]  PWM-Periodendauer Stromrichter
TA = Tc;            % [ s ]  btastzeit fuer Regelung
f = 50;             % [ Hz ] Frezquenz fuer die Ansteuerung

%% Definition der Parameter
Ud = 700;           % [ V ] Zwischenkreisspannung
Umax = Ud/2;        % [ V ] maximale Spannung
mmin = -0.95;       % minimaler Modulationsgrad
mmax = 0.95;        % maximaler Modulationsgrad

RL = 10;            % [ Ohm ] Lastwiderstand
LL = 20e-3;         % [ H ]   Lastinduktivitaet



