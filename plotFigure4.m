% by Wei Xu
% 07/08/2018
% plot Figure 4 in [Xu and Marshall, 2018]

clear; clc;

load('figure4.mat');

h1 = figure;
set(h1,'color',[1 1 1]);
set(h1,'position',[180 180 1180 1280]);
set(h1,'defaultAxesFontSize',18);

% plot figure 4a
subplot(431)
loglog(fig4a.En, fig4a.simulatedSpectra, 'k', fig4a.En, fig4a.bestfit, 'b', 'lineWidth', 1)
xlabel('Photon energy (eV)')
ylabel('Photon fluxes (ph/eV)')
set(gca, 'XLim',[1e4 1e7]);
set(gca, 'XMinorTick','on');
set(gca, 'XTick', [1e4 1e5 1e6 1e7]);
set(gca, 'XTickLabel', {'10^4' '10^5' '10^6' '10^7'});
set(gca, 'YLim',[9e-11 5e-1]);
set(gca, 'YMinorTick','on');
set(gca, 'YTick', [1e-9 1e-7 1e-5 1e-3 1e-1]);
set(gca, 'YTickLabel', {'10^{-9}' '10^{-7}' '10^{-5}' '10^{-3}' '10^{-1}'});

% plot figure 4b
subplot(432)
h = errorbar(fig4b.electronEnergy, fig4b.derivedSource, fig4b.minimum, fig4b.maximum, 'bo-'); hold on;
plot(fig4b.En, fig4b.mcSource, 'k', 'lineWidth', 1);
set(h, 'lineWidth', 1, 'MarkerSize', 4, 'MarkerFaceColor', 'b', 'MarkerEdgeColor', 'b');
xlabel('Electron energy (eV)')
ylabel('Fluxes (el/eV/cm^2/s)')
set(gca, 'XLim',[0 1.05e7]);
set(gca, 'XMinorTick','on');
set(gca, 'XTick', [0 2e6 4e6 6e6 8e6 1e7]);
set(gca, 'XTickLabel', {'0' '200' '400' '600' '800' '1000'});
set(gca, 'YLim',[0 0.03]);
set(gca, 'YTick', [0 0.01 0.02 0.03]);
set(gca, 'YMinorTick','on');

% plot figure 4c
subplot(433)
semilogx(fig4c.runs,fig4c.alt,'--','Color',[0.5 0.5 0.5]); hold on;
semilogx(fig4c.mcSource,fig4c.alt,'k','lineWidth',1); hold on;
semilogx(fig4c.derivedSource,fig4c.alt,'b','lineWidth',1);
set(gca, 'XScale', 'log');
xlabel('Ionization rate (pairs/cm^3/s)')
ylabel('Altitude (km)')
set(gca, 'XLim',[1e-2 5e4]);
set(gca, 'XMinorTick','on');
set(gca, 'XTick', [1e-2 1e0 1e2 1e4]);
set(gca, 'XTickLabel', {'10^{-2}' '10^{0}' '10^{2}' '10^{4}'});
set(gca, 'YLim',[30 150]);
set(gca, 'YTick', [30 60 90 120 150]);
set(gca, 'YMinorTick','on');

% plot figure 4d
subplot(434)
loglog(fig4d.En, fig4d.simulatedSpectra, 'k', fig4d.En, fig4d.bestfit, 'r', 'lineWidth', 1)
xlabel('Photon energy (eV)')
ylabel('Photon fluxes (ph/eV)')
set(gca, 'XLim',[1e4 1e7]);
set(gca, 'XMinorTick','on');
set(gca, 'XTick', [1e4 1e5 1e6 1e7]);
set(gca, 'XTickLabel', {'10^4' '10^5' '10^6' '10^7'});
set(gca, 'YLim',[9e-11 5e-1]);
set(gca, 'YMinorTick','on');
set(gca, 'YTick', [1e-9 1e-7 1e-5 1e-3 1e-1]);
set(gca, 'YTickLabel', {'10^{-9}' '10^{-7}' '10^{-5}' '10^{-3}' '10^{-1}'});

% plot figure 4e
subplot(435)
h = errorbar(fig4e.electronEnergy, fig4e.derivedSource, fig4e.minimum, fig4e.maximum, 'ro-'); hold on;
plot(fig4e.En, fig4e.mcSource, 'k', 'lineWidth', 1);
set(h, 'lineWidth', 1, 'MarkerSize', 4, 'MarkerFaceColor', 'r', 'MarkerEdgeColor', 'r');
xlabel('Electron energy (eV)')
ylabel('Fluxes (el/eV/cm^2/s)')
set(gca, 'XLim',[0 5e6]);
set(gca, 'XMinorTick','on');
set(gca, 'XTick', [0 1e6 2e6 3e6 4e6]);
set(gca, 'XTickLabel', {'0' '100' '200' '300' '400'});
set(gca, 'YLim',[0 0.6]);
set(gca, 'YMinorTick','on');

% plot figure 4f
subplot(436)
semilogx(fig4f.runs,fig4f.alt,'--','Color',[0.5 0.5 0.5]); hold on;
semilogx(fig4f.mcSource,fig4f.alt,'k','lineWidth',1); hold on;
semilogx(fig4f.derivedSource,fig4f.alt,'r','lineWidth',1);
set(gca, 'XScale', 'log');
xlabel('Ionization rate (pairs/cm^3/s)')
ylabel('Altitude (km)')
set(gca, 'XLim',[1e-2 5e4]);
set(gca, 'XMinorTick','on');
set(gca, 'XTick', [1e-2 1e0 1e2 1e4]);
set(gca, 'XTickLabel', {'10^{-2}' '10^{0}' '10^{2}' '10^{4}'});
set(gca, 'YLim',[30 150]);
set(gca, 'YTick', [30 60 90 120 150]);
set(gca, 'YMinorTick','on');

% plot figure 4g
subplot(437)
loglog(fig4g.En, fig4g.simulatedSpectra, 'k', fig4g.En, fig4g.bestfit, 'c', 'lineWidth', 1)
xlabel('Photon energy (eV)')
ylabel('Photon fluxes (ph/eV)')
set(gca, 'XLim',[1e4 1e7]);
set(gca, 'XMinorTick','on');
set(gca, 'XTick', [1e4 1e5 1e6 1e7]);
set(gca, 'XTickLabel', {'10^4' '10^5' '10^6' '10^7'});
set(gca, 'YLim',[9e-11 5e-1]);
set(gca, 'YMinorTick','on');
set(gca, 'YTick', [1e-9 1e-7 1e-5 1e-3 1e-1]);
set(gca, 'YTickLabel', {'10^{-9}' '10^{-7}' '10^{-5}' '10^{-3}' '10^{-1}'});

% plot figure 4h
subplot(438)
h = errorbar(fig4h.electronEnergy, fig4h.derivedSource, fig4h.minimum, fig4h.maximum, 'co-'); hold on;
plot(fig4h.En, fig4h.mcSource, 'k', 'lineWidth', 1);
set(h, 'lineWidth', 1, 'MarkerSize', 4, 'MarkerFaceColor', 'c', 'MarkerEdgeColor', 'c');
xlabel('Electron energy (eV)')
ylabel('Fluxes (el/eV/cm^2/s)')
set(gca, 'XLim',[0 2.5e6]);
set(gca, 'XMinorTick','on');
set(gca, 'XTick', [0 1e6 2e6 3e6 4e6]);
set(gca, 'XTickLabel', {'0' '100' '200' '300' '400'});
set(gca, 'YLim',[0 8]);
set(gca, 'YMinorTick','on');

% plot figure 4i
subplot(439)
semilogx(fig4i.runs,fig4i.alt,'--','Color',[0.5 0.5 0.5]); hold on;
semilogx(fig4i.mcSource,fig4i.alt,'k','lineWidth',1); hold on;
semilogx(fig4i.derivedSource,fig4i.alt,'c','lineWidth',1);
set(gca, 'XScale', 'log');
xlabel('Ionization rate (pairs/cm^3/s)')
ylabel('Altitude (km)')
set(gca, 'XLim',[1e-2 5e4]);
set(gca, 'XMinorTick','on');
set(gca, 'XTick', [1e-2 1e0 1e2 1e4]);
set(gca, 'XTickLabel', {'10^{-2}' '10^{0}' '10^{2}' '10^{4}'});
set(gca, 'YLim',[30 150]);
set(gca, 'YTick', [30 60 90 120 150]);
set(gca, 'YMinorTick','on');

% plot figure 4j
subplot(4,3,10)
loglog(fig4j.En, fig4j.simulatedSpectra, 'k', 'lineWidth', 1); hold on;
loglog(fig4j.En, fig4j.bestfit, 'Color',[0.75, 0, 0.75],'lineWidth',1);
xlabel('Photon energy (eV)')
ylabel('Photon fluxes (ph/eV)')
set(gca, 'XLim',[1e4 1e7]);
set(gca, 'XMinorTick','on');
set(gca, 'XTick', [1e4 1e5 1e6 1e7]);
set(gca, 'XTickLabel', {'10^4' '10^5' '10^6' '10^7'});
set(gca, 'YLim',[9e-11 5e-1]);
set(gca, 'YMinorTick','on');
set(gca, 'YTick', [1e-9 1e-7 1e-5 1e-3 1e-1]);
set(gca, 'YTickLabel', {'10^{-9}' '10^{-7}' '10^{-5}' '10^{-3}' '10^{-1}'});

% plot figure 4k
subplot(4,3,11)
h = errorbar(fig4k.electronEnergy, fig4k.derivedSource, fig4k.minimum, fig4k.maximum, 'o-', 'Color',[0.75, 0, 0.75]); hold on;
plot(fig4k.En, fig4k.mcSource, 'k', 'lineWidth', 1);
set(h, 'lineWidth', 1, 'MarkerSize', 5, 'MarkerFaceColor',[0.75, 0, 0.75], 'MarkerEdgeColor',[0.75, 0, 0.75]);
xlabel('Electron energy (eV)')
ylabel('Fluxes (el/eV/cm^2/s)')
set(gca, 'XLim',[0 2.5e6]);
set(gca, 'XMinorTick','on');
set(gca, 'XTick', [0 1e6 2e6 3e6 4e6]);
set(gca, 'XTickLabel', {'0' '100' '200' '300' '400'});
set(gca, 'YLim',[0 12]);
set(gca, 'YMinorTick','on');

% plot figure 4l
subplot(4,3,12)
semilogx(fig4l.runs,fig4l.alt,'--','Color',[0.5 0.5 0.5]); hold on;
semilogx(fig4l.mcSource,fig4l.alt,'k','lineWidth',1); hold on;
semilogx(fig4l.derivedSource,fig4l.alt,'Color',[0.75, 0, 0.75],'lineWidth',1);
set(gca, 'XScale', 'log');
xlabel('Ionization rate (pairs/cm^3/s)')
ylabel('Altitude (km)')
set(gca, 'XLim',[1e-2 5e4]);
set(gca, 'XMinorTick','on');
set(gca, 'XTick', [1e-2 1e0 1e2 1e4]);
set(gca, 'XTickLabel', {'10^{-2}' '10^{0}' '10^{2}' '10^{4}'});
set(gca, 'YLim',[30 150]);
set(gca, 'YTick', [30 60 90 120 150]);
set(gca, 'YMinorTick','on');



