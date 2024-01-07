%% Plots for PD PWM generation

gcf = figure('Name', 'PD-PWM generation');
set(gcf, 'position', [300, 100, 1400, 700])

subplot(4,1,1) % u_Aw, u_ab Verkettete Aussenleiterspannung
    hold on;
    plot(out.tout, out.u_ab,'-b')
    grid on
    grid minor
    legend('u_a_b')
    title('Sollspannung und verkettete Außenleiterspannung')
    hold off;

subplot(4,1,2) % u_aN Strangspannung
    hold on;
    plot(out.tout, out.u_Aw,'-r')
    plot(out.tout, out.u_aN,'-b')
    grid on
    grid minor
    legend('u_A_w', 'u_a_N')
    title('Strangspannung')
    hold off;

subplot(4,1,3) % u_N0 Gleichtaktspannung
    hold on;
    plot(out.tout, out.u_N0,'-b')
    grid on
    grid minor
    legend('u_n_0')
    title('Gleichtaktspannung')
    hold off;


subplot(4,1,4) % i_A Strangstrom
    hold on;
    plot(out.tout, out.i_a,'-b')
    grid on
    grid minor
    legend('i_a')
    title('Strangstrom')
    hold off;

saveas(figure(gcf), 'S:\Dokumente\Master\NPC_Inverter\plots\teil_a\POD_PWM_plots.png')

%% Plots for PD PWM generation - xy-Diagramm I

gcf1 = figure('Name', 'XY-Diagramm ');
set(gcf1, 'position', [300, -100, 800, 800])    
    plot(out.i_alpha_,out.i_beta_)
    axis([-35 35 -35 35])
    axis equal
    grid on
    grid minor
    % legend('i_a_N')
    title('Strangstrom')
saveas(figure(gcf1), 'S:\Dokumente\Master\NPC_Inverter\plots\teil_a\POD_xy_I.png')
%% Plots for PD PWM generation - xy-Diagramm U

gcf2 = figure('Name', 'XY-Diagramm');
set(gcf2, 'position', [300, -100, 800, 800])   
    hold on;
    plot(out.u_alpha_,out.u_beta_, 'b') % IST
    plot(out.u_alpha,out.u_beta, 'r')   % SOLL
    axis equal
    grid on
    grid minor
    hold off;
    legend('u_x_N_,_i_s_t', 'u_x_N_,_s_o_l_l')
    title('Raumzeiger der Strangspannung vgl. Soll und Ist')
saveas(figure(gcf2), 'S:\Dokumente\Master\NPC_Inverter\plots\teil_a\POD_xy_U.png')
    

