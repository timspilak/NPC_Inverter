%% Plot for PD current control

gcf = figure('Name', 'Current control');
set(gcf, 'position', [300, 100, 1400, 700])


subplot(2,1,1) % i_dw, i_dN d-Stroeme
    hold on;
    plot(0:TA:(length(out.i_dw)-1)*TA, out.i_dw, '-r')
    plot(0:TA:(length(out.i_dN)-1)*TA, out.i_dN, '-b')
    grid on
    grid minor
    legend('i_d_w', 'i_d_N')
    title('Soll- und Ist-d-Strom')
    hold off;

subplot(2,1,2) % i_qw, i_qN q-Stroeme
    hold on;
    plot(0:TA:(length(out.i_qw)-1)*TA, out.i_qw, '-r')
    plot(0:TA:(length(out.i_qN)-1)*TA, out.i_qN, '-b')
    grid on
    grid minor
    legend('i_q_w', 'i_q_N')
    title('Soll- und Ist-d-Strom')
    hold off;

saveas(figure(gcf), 'S:\Dokumente\Master\NPC_Inverter\plots\teil_b\PD_current_plots.png')

%% Plot for PD grid Voltage and current

gcf1 = figure('Name', 'Current control');
set(gcf1, 'position', [300, 100, 1400, 700])

    hold on;
    plot(out.tout, out.u_a./max(out.u_a), '-r')
    plot(out.tout, out.i_a_Netz./max(out.i_a_Netz), '-b')
    % plot(out.tout, out.u_aN./max(out.u_aN), '-g')
    axis([0 0.08 -1.2 1.2])
    grid on
    grid minor
    legend('u_a', 'i_a')
    title('Netzspannung und -strom')
    hold off;

saveas(figure(gcf1), 'S:\Dokumente\Master\NPC_Inverter\plots\teil_b\PD_current_voltage_plots.png')














