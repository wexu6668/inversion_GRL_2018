% by Wei Xu
% 07/08/2018
% plot Figure 3 in [Xu and Marshall, 2018]

clear; clc;

load('figure4_results.mat');

h1 = figure; 
set(h1,'color',[1 1 1]);
set(h1,'position',[180 600 600 450]);
set(h1,'defaultAxesFontSize',18);

% plot figure 4
loglog(figure4.electronenergy,figure4.bremsstrahlung,'ko-',...
       figure4.electronenergy,figure4.satellite,'ro-',...
       figure4.electronenergy,figure4.balloon,'bo-','lineWidth',1)
xlabel('Electron energy (eV)')
ylabel('Fraction of precipitation energy')
set(gca, 'XLim',[1e5 1e7]);
set(gca, 'XMinorTick','on');
set(gca, 'XTick', [1e5 1e6 1e7]);
set(gca, 'XTickLabel', {'10^5' '10^6' '10^7'});
set(gca, 'YLim',[1e-4 1e-1]);
set(gca, 'YMinorTick','on');
set(gca, 'YTick', [1e-4 1e-3 1e-2 1e-1]);
set(gca, 'YTickLabel', {'10^{-4}' '10^{-3}' '10^{-2}' '10^{-1}'});

