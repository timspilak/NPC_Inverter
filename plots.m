%% Plots for PD PWM generation

gcf = figure('Name', 'PD-PWM generation');
set(gcf, 'position', [300, 100, 1400, 700])

subplot(4,1,1) % u_Aw, u_ab Verkettete Aussenleiterspannung
    hold on;
    plot(out.tout, out.u_Aw,'-r')
    plot(out.tout, out.u_a0,'-b')
    grid on
    grid minor
    legend('u_A_w', 'u_a_0')
    title('Sollspannung und verkettete Außenleiterspannung')
    hold off;

subplot(4,1,2) % u_aN Strangspannung
    hold on;
    plot(out.tout, out.u_aN,'-b')
    grid on
    grid minor
    legend('u_a_N')
    title('Strangspannung')

subplot(4,1,3) % u_N0 Gleichtaktspannung
    hold on;
    plot(out.tout, out.u_N0,'-b')
    grid on
    grid minor
    legend('u_n_0')
    title('Gleichtaktspannung')


subplot(4,1,4) % i_A Strangstrom
    hold on;
    plot(out.tout, out.i_a,'-b')
    grid on
    grid minor
    legend('i_a')
    title('Strangstrom')

saveas(figure(gcf), 'PD_PWM_plots.png')

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
saveas(figure(gcf1), 'xy_I.png')
%% Plots for PD PWM generation - xy-Diagramm U

gcf2 = figure('Name', 'XY-Diagramm');
set(gcf2, 'position', [300, -100, 800, 800])    
    plot(out.u_alpha_,out.u_beta_, 'b')
    % axis([-35 35 -35 35])
    axis equal
    grid on
    grid minor
    % legend('u_a_N')
    title('Strangspannung')
saveas(figure(gcf2), 'xy_U.png')

