% exportfits_sp1.m
% Exports raw data and fits from window.


[filename, pathname] = uiputfile('*.csv','Save graph data as');

fitnewload_sp1

xlimits = get(handles.axes_1dh_sp1,'XLim');
ylimits = get(handles.axes_1dv_sp1,'XLim');

Anew_sp1 = Anew_sp1(ylimits(1):ylimits(2),xlimits(1):xlimits(2));

x = xlimits(1):xlimits(2);
y = ylimits(1):ylimits(2);

% figure(70)
% imagesc(Anew_sp1)

dlmwrite([pathname filename(1:end-4) '_1DH_sum' filename(end-3:end)],[x.' I1_sp1.'],'precision',10,'delimiter',',')
dlmwrite([pathname filename(1:end-4) '_1DV_sum' filename(end-3:end)],[y.' I2_sp1.'],'precision',10,'delimiter',',')
dlmwrite([pathname filename(1:end-4) '_1DH_cut' filename(end-3:end)],[x.' crossx_sp1.'],'precision',10,'delimiter',',')
dlmwrite([pathname filename(1:end-4) '_1DV_cut' filename(end-3:end)],[y.' crossz_sp1.'],'precision',10,'delimiter',',')
dlmwrite([pathname filename(1:end-4) '_2D' filename(end-3:end)],Anew_sp1,'precision',10,'delimiter',',')
    
    