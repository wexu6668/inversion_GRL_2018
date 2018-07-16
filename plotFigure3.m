% by Wei Xu
% 07/08/2018
% plot Figure 3 in [Xu and Marshall, 2018]

clear; clc;

load('figure3.mat');

h1 = figure; 
set(h1,'color',[1 1 1]);
set(h1,'position',[180 600 1500 800]);
set(h1,'defaultAxesFontSize',18);

% plot figure 3a
[xx yy] = meshgrid(log10(figure3.photonEnergy), log10(figure3.electronEnergy));
log10s = log10(figure3.source);
cbar = -8:0.02:0.5;
log10s(isinf(log10s)==1) = min(cbar);
log10s(log10s<min(cbar)) = min(cbar);
subplot(231);
[C h] = contourf(xx, yy, log10s, cbar);
colorbar('eastoutside','YTick',[-8 -6 -4 -2 0],'YTickLabel',{'10^{-8}' '10^{-6}' '10^{-4}' '10^{-2}' '10^{0}'});
caxis([min(cbar) max(cbar)]);
colormap('jet');
set(h,'LineColor','none');
xlabel('Photon energy (eV)')
ylabel('Electron energy (eV)')
set(gca, 'XLim',[4 7]);
set(gca, 'XMinorTick','on');
set(gca, 'XTick', [4 5 6 7]);
set(gca, 'XTickLabel', {'10^4' '10^5' '10^6' '10^7'});
set(gca, 'YLim',[5 7]);
set(gca, 'YMinorTick','on');
set(gca, 'YTick', [5 6 7]);
set(gca, 'YTickLabel', {'10^5' '10^6' '10^7'});

% plot figure 3b
[xx yy] = meshgrid(log10(figure3.photonEnergy), log10(figure3.electronEnergy));
log10s = log10(figure3.balloon);
cbar = -8:0.02:0.5;
log10s(isinf(log10s)==1) = min(cbar);
log10s(log10s<min(cbar)) = min(cbar);
subplot(232);
[C h] = contourf(xx, yy, log10s, cbar);
colorbar('eastoutside','YTick',[-8 -6 -4 -2 0],'YTickLabel',{'10^{-8}' '10^{-6}' '10^{-4}' '10^{-2}' '10^{0}'});
caxis([min(cbar) max(cbar)]);
colormap('jet');
set(h,'LineColor','none');
xlabel('Photon energy (eV)')
ylabel('Electron energy (eV)')
set(gca, 'XLim',[4 7]);
set(gca, 'XMinorTick','on');
set(gca, 'XTick', [4 5 6 7]);
set(gca, 'XTickLabel', {'10^4' '10^5' '10^6' '10^7'});
set(gca, 'YLim',[5 7]);
set(gca, 'YMinorTick','on');
set(gca, 'YTick', [5 6 7]);
set(gca, 'YTickLabel', {'10^5' '10^6' '10^7'});

% plot figure 3c
[xx yy] = meshgrid(log10(figure3.photonEnergy), log10(figure3.electronEnergy));
log10s = log10(figure3.satellite);
cbar = -8:0.02:0.5;
log10s(isinf(log10s)==1) = min(cbar);
log10s(log10s<min(cbar)) = min(cbar);
subplot(233);
[C h] = contourf(xx, yy, log10s, cbar);
colorbar('eastoutside','YTick',[-8 -6 -4 -2 0],'YTickLabel',{'10^{-8}' '10^{-6}' '10^{-4}' '10^{-2}' '10^{0}'});
caxis([min(cbar) max(cbar)]);
colormap('jet');
set(h,'LineColor','none');
xlabel('Photon energy (eV)')
ylabel('Electron energy (eV)')
set(gca, 'XLim',[4 7]);
set(gca, 'XMinorTick','on');
set(gca, 'XTick', [4 5 6 7]);
set(gca, 'XTickLabel', {'10^4' '10^5' '10^6' '10^7'});
set(gca, 'YLim',[5 7]);
set(gca, 'YMinorTick','on');
set(gca, 'YTick', [5 6 7]);
set(gca, 'YTickLabel', {'10^5' '10^6' '10^7'});

% plot figure 3d
subplot(234);
loglog(figure3.photonEnergy, figure3.source(figure3.ind,:), 'r-', 'lineWidth', 1)
xlabel('Photon energy (eV)')
ylabel('Photon fluxes (ph/eV)')
set(gca, 'XLim',[1e4 1e7]);
set(gca, 'XMinorTick','on');
set(gca, 'XTick', [1e4 1e5 1e6 1e7]);
set(gca, 'XTickLabel', {'10^4' '10^5' '10^6' '10^7'});
set(gca, 'YLim',[1e-8 5e0]);
set(gca, 'YMinorTick','on');
set(gca, 'YTick', [1e-8 1e-6 1e-4 1e-2 1e0]);
set(gca, 'YTickLabel', {'10^{-8}' '10^{-6}' '10^{-4}' '10^{-2}' '10^{0}'});

% plot figure 3e
subplot(235);
loglog(figure3.photonEnergy, figure3.balloon(figure3.ind,:), 'k-', 'lineWidth', 1)
xlabel('Photon energy (eV)')
ylabel('Photon fluxes (ph/eV)')
set(gca, 'XLim',[1e4 1e7]);
set(gca, 'XMinorTick','on');
set(gca, 'XTick', [1e4 1e5 1e6 1e7]);
set(gca, 'XTickLabel', {'10^4' '10^5' '10^6' '10^7'});
set(gca, 'YLim',[1e-8 5e0]);
set(gca, 'YMinorTick','on');
set(gca, 'YTick', [1e-8 1e-6 1e-4 1e-2 1e0]);
set(gca, 'YTickLabel', {'10^{-8}' '10^{-6}' '10^{-4}' '10^{-2}' '10^{0}'});

% plot figure 3f
subplot(236);
loglog(figure3.photonEnergy, figure3.satellite(figure3.ind,:), 'b-', 'lineWidth', 1)
xlabel('Photon energy (eV)')
ylabel('Photon fluxes (ph/eV)')
set(gca, 'XLim',[1e4 1e7]);
set(gca, 'XMinorTick','on');
set(gca, 'XTick', [1e4 1e5 1e6 1e7]);
set(gca, 'XTickLabel', {'10^4' '10^5' '10^6' '10^7'});
set(gca, 'YLim',[1e-8 5e0]);
set(gca, 'YMinorTick','on');
set(gca, 'YTick', [1e-8 1e-6 1e-4 1e-2 1e0]);
set(gca, 'YTickLabel', {'10^{-8}' '10^{-6}' '10^{-4}' '10^{-2}' '10^{0}'});

