% by Wei Xu
% 07/08/2018
% plot Figure 1 in [Xu and Marshall, 2018]

clear; clc;

load('figure1.mat')

h1 = figure;
set(h1,'color',[1 1 1]);
set(h1,'position',[180 600 1380 450]);
set(h1,'defaultAxesFontSize',18);

% plot figure 1b
[xx zz] = meshgrid(fig1b.x, fig1b.z);
logDis = log10(fig1b.spatialDistribution);
cbar = [7:0.02:12];
logDis(isinf(logDis)==1) = min(cbar);
subplot(121);
[C2 h2] = contourf(xx, zz, logDis, cbar);
set(h2,'LineColor','none');
colorbar('eastoutside','YTick',[7 8 9 10 11 12],'YTickLabel',{'10^{7}' '10^{8}' '10^{9}' '10^{10}' '10^{11}' '10^{12}'});
colormap('jet'); 
caxis([min(cbar) max(cbar)]);
xlabel('x (km)')
ylabel('z (km)')
set(gca, 'XLim',[-8e5 8e5]);
set(gca, 'XMinorTick','on');
set(gca, 'XTick', [-8e5 0 8e5]);
set(gca, 'XTickLabel', [-800 0 800]);
set(gca, 'YLim',[0 5e5]);
set(gca, 'YMinorTick','on');
set(gca, 'YTick', [0 1e5 2e5 3e5 4e5 5e5]);
set(gca, 'YTickLabel', [0 100 200 300 400 500]);

% plot figure 1c
[xx yy] = meshgrid(log10(fig1c.energy), fig1c.alt);
log10dis = log10(fig1c.altDistribution);
cbar = -7:0.02:-1;
log10dis(isinf(log10dis)==1) = min(cbar);
log10dis(log10dis<min(cbar)) = min(cbar);
subplot(122);
[C2 h2] = contourf(xx, yy, log10dis, cbar); 
colorbar('eastoutside','YTick',[-7 -5 -3 -1],'YTickLabel',{'10^{-7}' '10^{-5}' '10^{-3}' '10^{-1}'});
caxis([min(cbar) max(cbar)]);
colormap('jet');
set(h2,'LineColor','none');
ylabel('Altitude (km)')
xlabel('Precipiting electron (eV)')
set(gca, 'XLim',[5 7]);
set(gca, 'XMinorTick','on');
set(gca, 'XTick', [5 6 7]);
set(gca, 'XTickLabel', {'10^5' '10^6' '10^7'});
set(gca, 'YLim',[30 150]);
set(gca, 'YMinorTick','on');
set(gca, 'YTick', [30 60 90 120 150]);
hold on; figure (1); plot(fig1c.energy, fig1c.maxAltitutde, 'w--', 'lineWidth', 1)


