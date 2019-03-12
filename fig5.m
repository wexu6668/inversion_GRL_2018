% by Wei Xu
% 07/08/2018
% plot Figure 4 in [Xu and Marshall, 2018]

% clear; clc;

load('figure5_results.mat');

h1 = figure;
set(h1,'color',[1 1 1]);
set(h1,'position',[180 180 1180 1280]);
set(h1,'defaultAxesFontSize',18);

% plot figure 5a
subplot(431)
loglog(fig5a.En, fig5a.simulatedSpectra, 'k', fig5a.En, fig5a.bestfit, 'b', 'lineWidth', 1)
xlabel('Photon energy (eV)')
ylabel('Photon fluxes (ph/eV)')
set(gca, 'XLim',[1e4 1e7]);
set(gca, 'XMinorTick','on');
set(gca, 'XTick', [1e4 1e5 1e6 1e7]);
set(gca, 'XTickLabel', {'10^4' '10^5' '10^6' '10^7'});
set(gca, 'YLim',[1e-12 8e-3]);
set(gca, 'YMinorTick','on');
set(gca, 'YTick', [1e-11 1e-9 1e-7 1e-5 1e-3 1e-1]);
set(gca, 'YTickLabel', {'10^{-11}' '10^{-9}' '10^{-7}' '10^{-5}' '10^{-3}'});

% plot figure 5b
subplot(432)
h = errorbar(fig5b.electronEnergy, fig5b.derivedSource, fig5b.dsstd, fig5b.dsstd, 'bo-'); hold on;
plot(fig5b.En, fig5b.mcSource, 'k', 'lineWidth', 1);
set(h, 'lineWidth', 1, 'MarkerSize', 4, 'MarkerFaceColor', 'b', 'MarkerEdgeColor', 'b');
xlabel('Electron energy (eV)')
ylabel('Fluxes (el/eV/cm^2/s)')
set(gca, 'XLim',[0 1.05e7]);
set(gca, 'XMinorTick','on');
set(gca, 'XTick', [0 2e6 4e6 6e6 8e6 1e7]);
set(gca, 'XTickLabel', {'0' '200' '400' '600' '800' '1000'});
set(gca, 'YLim',[0 3e-4]);
set(gca, 'YTick', [0 1e-4 2e-4 3e-4]);
set(gca, 'YMinorTick','on');

% plot figure 5c
subplot(433)
semilogx(fig5c.runs,fig5c.alt,'--','Color',[0.5 0.5 0.5]); hold on;
semilogx(fig5c.mcSource,fig5c.alt,'k','lineWidth',1); hold on;
semilogx(fig5c.derivedSource,fig5c.alt,'b','lineWidth',1);
set(gca, 'XScale', 'log');
xlabel('Ionization rate (pairs/cm^3/s)')
ylabel('Altitude (km)')
set(gca, 'XLim',[1e-4 5e2]);
set(gca, 'XMinorTick','on');
set(gca, 'XTick', [1e-4 1e-2 1e0 1e2]);
set(gca, 'XTickLabel', {'10^{-4}' '10^{-2}' '10^{0}' '10^{2}'});
set(gca, 'YLim',[30 150]);
set(gca, 'YTick', [30 60 90 120 150]);
set(gca, 'YMinorTick','on');

% plot figure 5d
subplot(434)
loglog(fig5d.En, fig5d.simulatedSpectra, 'k', fig5d.En, fig5d.bestfit, 'r', 'lineWidth', 1)
xlabel('Photon energy (eV)')
ylabel('Photon fluxes (ph/eV)')
set(gca, 'XLim',[1e4 1e7]);
set(gca, 'XMinorTick','on');
set(gca, 'XTick', [1e4 1e5 1e6 1e7]);
set(gca, 'XTickLabel', {'10^4' '10^5' '10^6' '10^7'});
set(gca, 'YLim',[1e-12 8e-3]);
set(gca, 'YMinorTick','on');
set(gca, 'YTick', [1e-11 1e-9 1e-7 1e-5 1e-3 1e-1]);
set(gca, 'YTickLabel', {'10^{-11}' '10^{-9}' '10^{-7}' '10^{-5}' '10^{-3}'});

% plot figure 5e
subplot(435)
h = semilogy(fig5e.En, fig5e.mcSource, 'k', 'lineWidth', 1); hold on;
errorbar(fig5e.electronEnergy, fig5e.derivedSource, fig5e.dsstd, fig5e.dsstd, 'ro-'); 
set(h, 'lineWidth', 1, 'MarkerSize', 4, 'MarkerFaceColor', 'r', 'MarkerEdgeColor', 'r');
xlabel('Electron energy (eV)')
ylabel('Fluxes (el/eV/cm^2/s)')
set(gca, 'XLim',[0 5e6]);
set(gca, 'XMinorTick','on');
set(gca, 'XTick', [0 1e6 2e6 3e6 4e6]);
set(gca, 'XTickLabel', {'0' '100' '200' '300' '400'});
set(gca, 'YLim',[1e-6 1e-1]);
set(gca, 'YMinorTick','on');

% plot figure 5f
subplot(436)
semilogx(fig5f.runs,fig5f.alt,'--','Color',[0.5 0.5 0.5]); hold on;
semilogx(fig5f.mcSource,fig5f.alt,'k','lineWidth',1); hold on;
semilogx(fig5f.derivedSource,fig5f.alt,'r','lineWidth',1);
set(gca, 'XScale', 'log');
xlabel('Ionization rate (pairs/cm^3/s)')
ylabel('Altitude (km)')
set(gca, 'XLim',[1e-4 5e2]);
set(gca, 'XMinorTick','on');
set(gca, 'XTick', [1e-4 1e-2 1e0 1e2]);
set(gca, 'XTickLabel', {'10^{-4}' '10^{-2}' '10^{0}' '10^{2}'});
set(gca, 'YLim',[30 150]);
set(gca, 'YTick', [30 60 90 120 150]);
set(gca, 'YMinorTick','on');

% plot figure 5g
subplot(437)
loglog(fig5g.En, fig5g.simulatedSpectra, 'k', fig5g.En, fig5g.bestfit, 'c', 'lineWidth', 1)
xlabel('Photon energy (eV)')
ylabel('Photon fluxes (ph/eV)')
set(gca, 'XLim',[1e4 1e7]);
set(gca, 'XMinorTick','on');
set(gca, 'XTick', [1e4 1e5 1e6 1e7]);
set(gca, 'XTickLabel', {'10^4' '10^5' '10^6' '10^7'});
set(gca, 'YLim',[1e-12 8e-3]);
set(gca, 'YMinorTick','on');
set(gca, 'YTick', [1e-11 1e-9 1e-7 1e-5 1e-3 1e-1]);
set(gca, 'YTickLabel', {'10^{-11}' '10^{-9}' '10^{-7}' '10^{-5}' '10^{-3}'});

% plot figure 5h
subplot(438)
h = semilogy(fig5h.En, fig5h.mcSource, 'k', 'lineWidth', 1); hold on;
errorbar(fig5h.electronEnergy, fig5h.derivedSource, fig5h.dsstd, fig5h.dsstd, 'co-');
set(h, 'lineWidth', 1, 'MarkerSize', 4, 'MarkerFaceColor', 'c', 'MarkerEdgeColor', 'c');
xlabel('Electron energy (eV)')
ylabel('Fluxes (el/eV/cm^2/s)')
set(gca, 'XLim',[0 2.5e6]);
set(gca, 'XMinorTick','on');
set(gca, 'XTick', [0 1e6 2e6 3e6 4e6]);
set(gca, 'XTickLabel', {'0' '100' '200' '300' '400'});
set(gca, 'YLim',[1e-5 1e-1]);
set(gca, 'YMinorTick','on');

% plot figure 5i
subplot(439)
semilogx(fig5i.runs,fig5i.alt,'--','Color',[0.5 0.5 0.5]); hold on;
semilogx(fig5i.mcSource,fig5i.alt,'k','lineWidth',1); hold on;
semilogx(fig5i.derivedSource,fig5i.alt,'c','lineWidth',1);
set(gca, 'XScale', 'log');
xlabel('Ionization rate (pairs/cm^3/s)')
ylabel('Altitude (km)')
set(gca, 'XLim',[1e-4 5e2]);
set(gca, 'XMinorTick','on');
set(gca, 'XTick', [1e-4 1e-2 1e0 1e2]);
set(gca, 'XTickLabel', {'10^{-4}' '10^{-2}' '10^{0}' '10^{2}'});
set(gca, 'YLim',[30 150]);
set(gca, 'YTick', [30 60 90 120 150]);
set(gca, 'YMinorTick','on');

% plot figure 5j
subplot(4,3,10)
loglog(fig5j.En, fig5j.simulatedSpectra, 'k', 'lineWidth', 1); hold on;
loglog(fig5j.En, fig5j.bestfit, 'Color',[0.75, 0, 0.75],'lineWidth',1);
xlabel('Photon energy (eV)')
ylabel('Photon fluxes (ph/eV)')
set(gca, 'XLim',[1e4 1e7]);
set(gca, 'XMinorTick','on');
set(gca, 'XTick', [1e4 1e5 1e6 1e7]);
set(gca, 'XTickLabel', {'10^4' '10^5' '10^6' '10^7'});
set(gca, 'YLim',[1e-12 8e-3]);
set(gca, 'YMinorTick','on');
set(gca, 'YTick', [1e-11 1e-9 1e-7 1e-5 1e-3 1e-1]);
set(gca, 'YTickLabel', {'10^{-11}' '10^{-9}' '10^{-7}' '10^{-5}' '10^{-3}'});

% plot figure 5k
subplot(4,3,11)
h = semilogy(fig5k.En, fig5k.mcSource, 'k', 'lineWidth', 1); hold on;
errorbar(fig5k.electronEnergy, fig5k.derivedSource, fig5k.dsstd, fig5k.dsstd, 'o-', 'Color',[0.75, 0, 0.75]); 
set(h, 'lineWidth', 1, 'MarkerSize', 5, 'MarkerFaceColor',[0.75, 0, 0.75], 'MarkerEdgeColor',[0.75, 0, 0.75]);
xlabel('Electron energy (eV)')
ylabel('Fluxes (el/eV/cm^2/s)')
set(gca, 'XLim',[0 2.5e6]);
set(gca, 'XMinorTick','on');
set(gca, 'XTick', [0 1e6 2e6 3e6 4e6]);
set(gca, 'XTickLabel', {'0' '100' '200' '300' '400'});
set(gca, 'YLim',[1e-5 1e-1]);
set(gca, 'YMinorTick','on');

% plot figure 5l
subplot(4,3,12)
semilogx(fig5l.runs,fig5l.alt,'--','Color',[0.5 0.5 0.5]); hold on;
semilogx(fig5l.mcSource,fig5l.alt,'k','lineWidth',1); hold on;
semilogx(fig5l.derivedSource,fig5l.alt,'Color',[0.75, 0, 0.75],'lineWidth',1);
set(gca, 'XScale', 'log');
xlabel('Ionization rate (pairs/cm^3/s)')
ylabel('Altitude (km)')
set(gca, 'XLim',[1e-4 5e2]);
set(gca, 'XMinorTick','on');
set(gca, 'XTick', [1e-4 1e-2 1e0 1e2]);
set(gca, 'XTickLabel', {'10^{-4}' '10^{-2}' '10^{0}' '10^{2}'});
set(gca, 'YLim',[30 150]);
set(gca, 'YTick', [30 60 90 120 150]);
set(gca, 'YMinorTick','on');



