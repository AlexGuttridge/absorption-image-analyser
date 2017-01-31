% exportabsimage_sp1.m
% Exports the absorption image into a separate Matlab figure

load maindata

fitnewload_sp2;
% fitload_sp2;

xlimits = get(handles.axes_2d_sp2,'XLim');
ylimits = get(handles.axes_2d_sp2,'YLim');

xpts = xlimits(1):xlimits(2);
ypts = ylimits(1):ylimits(2);

% A_save = Anew_sp2(ypts,xpts);
A_save = Anew_sp2;
% A_save = A;

figure(72)
imagesc(xpts,ypts,A_save)
% colour = str2num(get(handles.edit_ODrange_sp2,'String'));
% axes(handles.axes_2d_sp2);
caxis(colour_sp2)
colormap jet
axis equal
axis tight