function HPlot(XRayFileName, EMFileName1, EMFileName2)
    XRay = csvread(XRayFileName);
    EM1 = csvread(EMFileName1);
    EM2 = csvread(EMFileName2);
    
    HPlotSum(XRay, EM1, EM2);

end

function HPlotSum(XRay, EM1, EM2)
    XHBOS = sum(XRay(:, 1:5), 2);
    EMHBOS1 = sum(EM1(:, 1:5), 2);
    EMHBOS2 = sum(EM2(:, 1:5), 2);
    [xBins] = histc(XHBOS, 0:0.1:13);
    [emBins1] = histc(EMHBOS1, 0:0.1:13);
    [emBins2] = histc(EMHBOS2, 0:0.1:13);
    plot(0:0.1:13, xBins/sum(xBins), 'r', 'LineWidth', 3);
    hold on;
    plot(0:0.1:13, emBins1/sum(emBins1), 'b', 'LineWidth', 3);
    hold on;
    plot(0:0.1:13, emBins2/sum(emBins2), 'g', 'LineWidth', 3);
end