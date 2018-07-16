% by Wei Xu
% 07/08/2018
% plot Figure 2 in [Xu and Marshall, 2018]

clear; clc;

load('figure2.mat');

h1 = figure; 
set(h1,'color',[1 1 1]);
set(h1,'position',[180 600 1600 1280]);
set(h1,'defaultAxesFontSize',18);

% plot figure 2a
subplot(221); hold on; 
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
cbar = 4:0.02:10.5;
logXimage(isinf(logXimage)==1) = min(cbar);
logXimage(logXimage<min(cbar)) = min(cbar);
subplot(222);
[C h] = contourf(ee, aa, logXimage, cbar);
colorbar('eastoutside','YTick',[4 6 8 10],'YTickLabel',{'10^{4}' '10^{6}' '10^{8}' '10^{10}'});
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
subplot(223); hold on; 
for i = 1:length(fig2c.x)
    ind = find(fig2c.x(i,:)~=0);
    plot3(fig2c.x(i,ind(1:2)),  fig2c.y(i,ind(1:2)),  fig2c.z(i,ind(1:2)),  'r', 'LineWidth',1);
    plot3(fig2c.x(i,ind(2:end-1)),fig2c.y(i,ind(2:end-1)),fig2c.z(i,ind(2:end-1)),'r.-', ...
    'LineWidth',1,'MarkerEdgeColor','k','MarkerFaceColor','k','MarkerSize',6)
    plot3(fig2c.x(i,ind(end-1:end)),fig2c.y(i,ind(end-1:end)),fig2c.z(i,ind(end-1:end)),'r-', ...
    'LineWidth',1);
end
plot3(fig2c.detector(1),fig2c.detector(2),fig2c.detector(3),'bs');
grid on; box on; view(36, 25);
ax = gca;
ax.BoxStyle = 'full';
xlabel('x (km)')
set(gca, 'XLim',[-100e3 300e3]);
ylabel('y (km)')
set(gca, 'YLim',[-200e3 200e3]);
zlabel('z (km)')
set(gca, 'ZLim',[0 500e3]);

% plot figure 2d
[ee aa] = meshgrid(fig2d.azi, fig2d.ele);
logXimage = log10(fig2d.ximage); 
cbar = 4:0.02:10.5;
logXimage(isinf(logXimage)==1) = min(cbar);
logXimage(logXimage<min(cbar)) = min(cbar);
subplot(224);
[C h] = contourf(ee, aa, logXimage, cbar);
colorbar('eastoutside','YTick',[4 6 8 10],'YTickLabel',{'10^{4}' '10^{6}' '10^{8}' '10^{10}'});
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



