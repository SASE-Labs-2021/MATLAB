%% Title Card
%{
    Author: Abigail Chiaokhiao
    Purpose: SASE Labs Workshop 2/3 - MATLAB Plotting
%}
%% Line Plots
histX = linspace(0,2*pi,25);
sPY = sin(histX);
iOmax = find(sPY == max(sPY))
iOmin = find(sPY == min(sPY))
hold on
ln = plot(histX,sPY,'b-.h', 'MarkerEdgeColor', 'r', 'MarkerFaceColor', 'y',...
    'MarkerIndices', [iOmax iOmin 1:3:25])
ln.Color = 'm';
xlabel('Horizontal Distance')
ylabel('Roller Coaster Track Height')
title('The Shape of a Roller Coaster')
%{
xconf = [histX histX(end:-1:1)];%Concatenation, to play w/
yconf = [sPY+0.3 sPY(end:-1:1)-0.3];%Concatenation, to play w/
hold on
p = fill(xconf,yconf,'r', 'EdgeColor', 'b', 'FaceAlpha', 0.25);
plot(histX,sPY,'b-.h', 'MarkerEdgeColor', 'r', 'MarkerFaceColor', 'y', 'MarkerIndices', [iOmax iOmin 1:1:length(sPY)])
%}
% Error bars
error = 0.5*ones(size(sPY));
err = errorbar(histX,sPY,error, '*')
xlim % Show x limits
ylim % Show y limits
hold off

% Multiple y axes
yyaxis right
plot(histX,sPY)
ylabel('one')
yyaxis left
plot(histX,5*sPY)
ylabel('two')
cla
%% Bar Data
    %% Histograms
    % Using numbers
    subplot(1,2,1)
    histX = [3 3 3 3 2 4 3 3 2 4 2 3 4 2];
    nbins = 3;
    histogram(histX, nbins, 'FaceColor', 'g', 'EdgeColor', 'b');
    title("Years of SASE Board 2021");
    subplot(1,2,2)
    A = [0 1 1 1 1 1 0 0 0 NaN NaN 1 0 0 0 1 0 1 0 1 0 0 0 1 1 1 1];
    C = categorical(A, [1 0 NaN], {'LIE-chee', 'LEE-chee', '*shrug*'});
    histogram(C,'BarWidth', 0.5)
    title("What do people call 'Lychee'?")
    %% Bar graphs
    % Regular bar
    barX = 0:3;
    barY = [5 3 15; 23 17 16; 14 9 13; 12 7 8];
    b = bar(barX,barY, 0.5, 'stacked', 'FaceColor', 'flat')
    b(2).CData = [0.4 1 0]
%% Other Data Plots
    %% Scatter Plots
    sPX = linspace(0,3*pi,200);
    sPY = sin(sPX) + rand(1,200);
    sz = linspace(1,100,length(sPX));
    c = linspace(2,50, length(sPX)); 
    s = scatter(sPX,sPY,sz,c,'filled','s', 'MarkerEdgeColor','k')
    s.MarkerFaceAlpha = 0.5;
    %% Pie graphs
    pData = [11 12 15 18 20];
    labels = {'Jaydon', 'Jamison', 'Aidan', 'Tristan', 'Abi'};
    p = pie(pData, [1 0 0 0 1])%%
    legend(labels);
    p(9).FaceColor = 'c';
    p(10).FontSize = 20;
%% Overlaid Graphs
    %% Bar Graphs
    x = [1 2 3 4 5];
    newC = categorical(x,[1 2 3 4 5], {'Jan' 'Feb' 'Mar' 'Apr' 'May'});
    boba_bogt = [12 5 17 10 13];
    wide = 0.5;
    bar(newC,boba_bogt,wide,'FaceColor',[.82 .71 .55])%
    brnSgr = [5 1 10 10 12];
    thin = .25;
    hold on
    bar(newC,brnSgr,thin,'FaceColor',[0.59 0.29 0])%
    hold off
    legend('Boba Bought','Brown Sugar Bought')
    %% Line + Bar Graphs
    days = 0:5:35;
    memes = [5 7 10 12 16 21 26 32];
    members = [2 10 30 55 77 100 118 133];
    yyaxis left
    b = bar(days,members, 'FaceColor', [.2 .6 1]);
    yyaxis right
    plot(days,memes, 'LineWidth', 3, 'Color', 'r')
    legend('Discord Members', 'Memes Posted')
%% More on Color
    surf(peaks)
    % colormap prism

    map = [0.11 0.13 0.87; % Magenta
        0.67 0.19 1; % Purple
        0.87 0.14 0.85]; % Blue
    colormap(map)
    colorbar
    subplot(1,3,1)
    surf(peaks)
    shading flat
    subplot(1,3,2)
    surf(peaks)
    shading faceted
    subplot(1,3,3)
    surf(peaks)
    shading interp