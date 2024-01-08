%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Neutral Point clamped Inverter mit Sinus PWM netzfreundliche Einspeisung
% ausgewaehlte Kapitel Power Electronics WS 2023/24
% Tim Spilak 203864
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clear all
%% Definition der Zeiten
Ts = 1e-6;          % [ s ] Simulationsschrittweite
Tsim = 8e-2;        % [ s ] Simulationsdauer

fc = 8000;          % [ Hz ] PWM-Frequenz Stromrichter
Tc = 1/fc;          % [ s ]  PWM-Periodendauer Stromrichter
TA = Tc;            % [ s ]  Abtastzeit fuer Regelung
f = 50;             % [ Hz ] Frezquenz fuer die Ansteuerung

%% Definition der Parameter
Ud = 700;           % [ V ] Zwischenkreisspannung
Umax = Ud/2;        % [ V ] maximale Spannung
mmin = -1;          % minimaler Modulationsgrad
mmax = 1;           % maximaler Modulationsgrad

RN = 0.25;          % [ Ohm ] Ohmscher Widerstand des induktiven Netzfilters
LN = 1e-3;          % [ H ] Induktivituet des induktiven Netzfilters

%% Regelstrecke
KF = 1/RN;          % Streckenverstaerkung
TF = LN/RN;         % Streckenzeitkonstante
a  = -1/TF;           
K1 = exp(a*TA);         
K2 = KF*(1-K1);    

%% Zeitdiskreter Regler
zR1 = 0.6;          % Polvorgabe
KP= (1/K2)*(1+K1-2*zR1);
KI = (1/K2)*(1-zR1)*(1-zR1);
M  = (1/K2)*(1-zR1);

