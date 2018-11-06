% by Wei Xu
% 07/08/2018
% plot Figure 2 in [Xu and Marshall, 2018]

clear; clc;

load('figure2_results.mat');

h1 = figure; 
set(h1,'color',[1 1 1]);
set(h1,'position',[180 600 1800 1280]);
set(h1,'defaultAxesFontSize',18);

% plot figure 2a
subplot(331); hold on; 
for i = 1:length(fig2a.x)
    ind = find(fig2a.x(i,:)~=0);
    plot3(fig2a.x(i,ind(1:2)),  fig2a.y(i,ind(1:2)),  fig2a.z(i,ind(1:2)),  'r', 'LineWidth',1);
    plot3(fig2a.x(i,ind(2:end-1)),fig2a.y(i,ind(2:end-1)),fig2a.z(i,ind(2:end-1)),'r.-', ...
    'LineWidth',1,'MarkerEdgeColor','k','MarkerFaceColor','k','MarkerSize',6)
    plot3(fig2a.x(i,ind(end-1:end)),fig2a.y(i,ind(end-1:end)),fig2a.z(i,ind(end-1:end)),'r-', ...
    'LineWidth',1);
end
plot3(fig2a.detector(1),fig2a.detector(2),fig2a.detector(3),'bs');
grid on; box on; view(68, 12);
ax = gca;
ax.BoxStyle = 'full';
xlabel('x (km)')
set(gca, 'XLim',[-100e3 100e3]);
ylabel('y (km)')
set(gca, 'YLim',[-50e3 150e3]);
zlabel('z (km)')
set(gca, 'ZLim',[20e3 100e3]);

% plot figure 2b
[ee aa] = meshgrid(fig2b.azi, fig2b.ele);
logXimage = log10(fig2b.ximage); 
cbar = 1:0.02:7.5;
logXimage(isinf(logXimage)==1) = min(cbar);
logXimage(logXimage<min(cbar)) = min(cbar);
subplot(332);
[C h] = contourf(ee, aa, logXimage, cbar);
colorbar('eastoutside','YTick',[1 3 5 7],'YTickLabel',{'10^{1}' '10^{3}' '10^{5}' '10^{7}'});
set(h,'LineColor','none');
colormap('jet'); 
caxis([min(cbar) max(cbar)]);
xlabel('Azimuth (deg)')
ylabel('Elevation (deg)')
set(gca, 'XLim',[-180 180]);
set(gca, 'XMinorTick','on');
set(gca, 'XTick', [-180 -120 -60 0 60 120 180]);
set(gca, 'YLim',[0 90]);
set(gca, 'YMinorTick','on');
set(gca, 'YTick', [0 30 60 90]);

% plot figure 2c
[ee aa] = meshgrid(fig2c.azi, fig2c.ele);
logXimage = log10(fig2c.ximage); 
cbar = 0:10^5:10^7.5;
subplot(333);
[C h] = contourf(ee, aa, fig2c.ximage,cbar);
set(h,'LineColor','none');
colormap('jet'); colorbar('eastoutside');
caxis([min(cbar) max(cbar)]);
xlabel('Azimuth (deg)')
ylabel('Elevation (deg)')
set(gca, 'XLim',[-180 180]);
set(gca, 'XMinorTick','on');
set(gca, 'XTick', [-180 -120 -60 0 60 120 180]);
set(gca, 'YLim',[0 90]);
set(gca, 'YMinorTick','on');
set(gca, 'YTick', [0 30 60 90]);

% plot figure 2d
subplot(334); hold on; 
for i = 1:length(fig2d.x)
    ind = find(fig2d.x(i,:)~=0);
    plot3(fig2d.x(i,ind(1:2)),  fig2d.y(i,ind(1:2)),  fig2d.z(i,ind(1:2)),  'r', 'LineWidth',1);
    plot3(fig2d.x(i,ind(2:end-1)),fig2d.y(i,ind(2:end-1)),fig2d.z(i,ind(2:end-1)),'r.-', ...
    'LineWidth',1,'MarkerEdgeColor','k','MarkerFaceColor','k','MarkerSize',6)
    plot3(fig2d.x(i,ind(end-1:end)),fig2d.y(i,ind(end-1:end)),fig2d.z(i,ind(end-1:end)),'r-', ...
    'LineWidth',1);
end
plot3(fig2d.detector(1),fig2d.detector(2),fig2d.detector(3),'bs');
grid on; box on; view(68, 12);
ax = gca;
ax.BoxStyle = 'full';
xlabel('x (km)')
set(gca, 'XLim',[-100e3 100e3]);
ylabel('y (km)')
set(gca, 'YLim',[-50e3 150e3]);
zlabel('z (km)')
set(gca, 'ZLim',[20e3 100e3]);

% plot figure 2e
[ee aa] = meshgrid(fig2e.azi, fig2e.ele);
logXimage = log10(fig2e.ximage); 
cbar = 1:0.02:7.5;
logXimage(isinf(logXimage)==1) = min(cbar);
logXimage(logXimage<min(cbar)) = min(cbar);
subplot(335);
[C h] = contourf(ee, aa, logXimage, cbar);
colorbar('eastoutside','YTick',[1 3 5 7],'YTickLabel',{'10^{1}' '10^{3}' '10^{5}' '10^{7}'});
set(h,'LineColor','none');
colormap('jet'); 
caxis([min(cbar) max(cbar)]);
xlabel('Azimuth (deg)')
ylabel('Elevation (deg)')
set(gca, 'XLim',[-180 180]);
set(gca, 'XMinorTick','on');
set(gca, 'XTick', [-180 -120 -60 0 60 120 180]);
set(gca, 'YLim',[0 90]);
set(gca, 'YMinorTick','on');
set(gca, 'YTick', [0 30 60 90]);

% plot figure 2f
[ee aa] = meshgrid(fig2f.azi, fig2f.ele);
logXimage = log10(fig2f.ximage); 
cbar = 0:10^5:10^7.5;
subplot(336);
[C h] = contourf(ee, aa, fig2f.ximage,cbar);
set(h,'LineColor','none');
colormap('jet'); colorbar('eastoutside');
caxis([min(cbar) max(cbar)]);
xlabel('Azimuth (deg)')
ylabel('Elevation (deg)')
set(gca, 'XLim',[-180 180]);
set(gca, 'XMinorTick','on');
set(gca, 'XTick', [-180 -120 -60 0 60 120 180]);
set(gca, 'YLim',[0 90]);
set(gca, 'YMinorTick','on');
set(gca, 'YTick', [0 30 60 90]);

% plot figure 2g
subplot(337); hold on; 
for i = 1:length(fig2g.x)
    ind = find(fig2g.x(i,:)~=0);
    plot3(fig2g.x(i,ind(1:2)),  fig2g.y(i,ind(1:2)),  fig2g.z(i,ind(1:2)),  'r', 'LineWidth',1);
    plot3(fig2g.x(i,ind(2:end-1)),fig2g.y(i,ind(2:end-1)),fig2g.z(i,ind(2:end-1)),'r.-', ...
    'LineWidth',1,'MarkerEdgeColor','k','MarkerFaceColor','k','MarkerSize',6)
    plot3(fig2g.x(i,ind(end-1:end)),fig2g.y(i,ind(end-1:end)),fig2g.z(i,ind(end-1:end)),'r-', ...
    'LineWidth',1);
end
plot3(fig2g.detector(1),fig2g.detector(2),fig2g.detector(3),'bs');
grid on; box on; view(36, 25);
ax = gca;
ax.BoxStyle = 'full';
xlabel('x (km)')
set(gca, 'XLim',[-100e3 300e3]);
ylabel('y (km)')
set(gca, 'YLim',[-200e3 200e3]);
zlabel('z (km)')
set(gca, 'ZLim',[0 500e3]);

% plot figure 2h
[ee aa] = meshgrid(fig2h.azi, fig2h.ele);
logXimage = log10(fig2h.ximage); 
cbar = 1:0.02:7.5;
logXimage(isinf(logXimage)==1) = min(cbar);
logXimage(logXimage<min(cbar)) = min(cbar);
subplot(338);
[C h] = contourf(ee, aa, logXimage, cbar);
colorbar('eastoutside','YTick',[1 3 5 7],'YTickLabel',{'10^{1}' '10^{3}' '10^{5}' '10^{7}'});
set(h,'LineColor','none');
colormap('jet'); 
caxis([min(cbar) max(cbar)]);
xlabel('Azimuth (deg)')
ylabel('Elevation (deg)')
set(gca, 'XLim',[-180 180]);
set(gca, 'XMinorTick','on');
set(gca, 'XTick', [-180 -120 -60 0 60 120 180]);
set(gca, 'YLim',[-90 0]);
set(gca, 'YMinorTick','on');
set(gca, 'YTick', [-90 -60 -30 0]);

% plot figure 2i
[ee aa] = meshgrid(fig2i.azi, fig2i.ele);
logXimage = log10(fig2i.ximage); 
cbar = 0:10^3:10^6;
subplot(339);
[C h] = contourf(ee, aa, fig2i.ximage,cbar);
set(h,'LineColor','none');
colormap('jet'); colorbar('eastoutside');
caxis([min(cbar) max(cbar)]);
xlabel('Azimuth (deg)')
ylabel('Elevation (deg)')
set(gca, 'XLim',[-180 180]);
set(gca, 'XMinorTick','on');
set(gca, 'XTick', [-180 -120 -60 0 60 120 180]);
set(gca, 'YLim',[-90 0]);
set(gca, 'YMinorTick','on');
set(gca, 'YTick', [-90 -60 -30 0]);



