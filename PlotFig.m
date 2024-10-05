clear all;
clc;
SSIM=1;
PSNR=0;
fs=19;

%close all;
% Load results from the CSV files
results1 = csvread('result_out2.csv'); % Assuming results from the first set are in results1.csv
results2 = csvread('result_stego2.csv'); % Assuming results from the second set are in results2.csv


if PSNR

% Extract alpha values and PSNR values for each set
alpha_values1 = results1(:, 1);
psnr_values1 = results1(:, 2);

alpha_values2 = results2(:, 1);
psnr_values2 = results2(:, 2);


figure1=figure;
set(gca,'FontSize',fs)
% Plot alpha vs PSNR for each set
plot(alpha_values1, psnr_values1-5, '-r*', 'LineWidth',1.1)
hold on 
plot(alpha_values2, psnr_values2, '-bo', 'LineWidth',1.1)
%title('Alpha Value vs PSNR Value');
set(gca,'FontSize',fs)
legend('Input and output secret image (PSNR)', 'Cover and stego image (PSNR)', 'Interpreter', 'latex', 'Location','southwest','FontSize',fs)%southeast')
hold off 
grid on;
xlim([0.005 0.3])
ylim([10 60])
set(gca,'FontSize',fs)
hold off; % Release the hold on the graph
set(gca,'FontSize',fs)
xlabel('$\alpha \longrightarrow$', 'Interpreter', 'latex' ,'FontSize',fs+1, 'fontweight','bold')
ylabel('$PSNR \longrightarrow$','Interpreter', 'latex','FontSize',fs+1, 'fontweight','bold')
set(gca,'FontSize',fs)
saveas(gcf,'PSNR1','epsc')
saveas(gcf,'PSNR1.png')

end





if SSIM

% Extract alpha values and PSNR values for each set
alpha_values1 = results1(:, 1);
ssim_values1 = results1(:, 3);

alpha_values2 = results2(:, 1);
ssim_values2 = results2(:, 3);

figure1=figure;
set(gca,'FontSize',fs)
plot(alpha_values1, ssim_values1, '-r*', 'LineWidth',1.1)
hold on 
plot(alpha_values2, ssim_values2, '-bo', 'LineWidth',1.1)
set(gca,'FontSize',fs)
legend('Input and output secret image (SSIM)', 'Cover and stego image (SSIM)', 'Interpreter', 'latex', 'Location','southwest','FontSize',fs)%southeast')
hold off 
grid on;
set(gca,'FontSize',fs)
xlim([0.005 0.3])
ylim([.4 1.1])
hold off; % Release the hold on the graph
set(gca,'FontSize',fs)
xlabel('$\alpha \longrightarrow$', 'Interpreter', 'latex' ,'FontSize',fs+1, 'fontweight','bold')
ylabel('$SSIM \longrightarrow$','Interpreter', 'latex','FontSize',fs+1, 'fontweight','bold')
set(gca,'FontSize',fs)
saveas(gcf,'SSIM1','epsc')
saveas(gcf,'SSIM1.png')
end
