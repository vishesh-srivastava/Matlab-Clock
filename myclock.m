clc;clear;clf

x = 1:8;
y = 1:12;
centers = [];
for ii = 1:length(x)
    for jj = 1:length(y)
   centers =  [centers ; x(ii) y(jj)]; 

    end
end
radii = 0.5*ones(length(x)*length(y),1);

viscircles(centers, radii,'LineWidth',0.25);
hold on
axis([0 9 0 13])
axis equal 
grid minor

%% Extracting the time
format shortg
time = clock; % time(4) = hour, time(5) = min

%% For quadrant one
centers_1 = center_grid(1,1);
draw(centers_1,rem(time(4),10));

%% For quadrant two
centers_2 = center_grid(0,1);
draw(centers_2,floor(time(4)/10));

%% For quadrant three
centers_3 = center_grid(0,0);
draw(centers_3,floor(time(5)/10));

%% For quadrant four
centers_4 = center_grid(1,0);
draw(centers_4,rem(time(5),10));
hold off

%% Function for center
function center = center_grid(x,y)
n = 1:4;
m = 1:6;
center = [];
for ii = 1:length(n)
    for jj = 1:length(m)
   center =  [center ; n(ii)+4*x m(jj)+6*y]; 
    end
end
end

%% Function to draw
function draw(centers_n,digit)

switch digit
    case 0
      pattern = [3 6 6 6 6 1 5 3 6 6 1 5 5 4 6 6 2 5 4 6 6 6 6 2];
      for ii = 1:length(pattern)
          line_draw(centers_n(ii,:),pattern(ii));
      end
    case 1
      pattern = [3 1 7 7 3 1 5 4 6 6 2 5 5 3 6 6 6 2 4 2 7 7 0 0];
      for ii = 1:length(pattern)
          line_draw(centers_n(ii,:),pattern(ii));
      end
    case 2
      pattern = [3 6 6 1 3 1 5 3 1 5 5 5 5 5 5 4 2 5 4 2 4 6 6 2];
      for ii = 1:length(pattern)
          line_draw(centers_n(ii,:),pattern(ii));
      end
    case 3
      pattern = [3 1 3 1 3 1 5 5 5 5 5 5 5 4 2 4 2 5 4 6 6 6 6 2];
      for ii = 1:length(pattern)
          line_draw(centers_n(ii,:),pattern(ii));
      end
    case 4
      pattern = [7 7 3 6 6 1 7 7 5 3 6 2 3 6 2 4 6 1 4 6 6 6 6 2];
      for ii = 1:length(pattern)
          line_draw(centers_n(ii,:),pattern(ii));
      end
    case 5 
      pattern = [3 1 3 6 6 1 5 5 5 3 1 5 5 4 2 5 5 5 4 6 6 2 4 2];
      for ii = 1:length(pattern)
          line_draw(centers_n(ii,:),pattern(ii));
      end
    case 6
      pattern = [3 6 6 6 6 1 5 3 1 3 1 5 5 4 2 5 5 5 4 6 6 2 4 2];
      for ii = 1:length(pattern)
          line_draw(centers_n(ii,:),pattern(ii));
      end
    case 7
      pattern = [0 7 7 3 6 1 0 7 7 4 1 5 3 6 6 6 2 5 4 6 6 6 6 2];
      for ii = 1:length(pattern)
          line_draw(centers_n(ii,:),pattern(ii));
      end
    case 8
      pattern = [3 6 6 6 6 1 5 3 1 3 1 5 5 4 2 4 2 5 4 6 6 6 6 2];
      for ii = 1:length(pattern)
          line_draw(centers_n(ii,:),pattern(ii));
      end
    case 9 
      pattern = [7 7 3 6 6 1 7 7 5 3 1 5 3 6 2 4 2 5 4 6 6 6 6 2];
      for ii = 1:length(pattern)
          line_draw(centers_n(ii,:),pattern(ii));
      end
end
    function line_draw(point,num)
        switch num
            case 1
              q = quiver([point(1) point(1)],[point(2) point(2)],[1 0],[0 -1],0.5);
              q.LineWidth = 2;
              hold on
            case 2 
              q = quiver([point(1) point(1)],[point(2) point(2)],[-1 0],[0 -1],0.5);
              q.LineWidth = 2;
              hold on
            case 3 
              q = quiver([point(1) point(1)],[point(2) point(2)],[1 0],[0 1],0.5);
              q.LineWidth = 2;
              hold on
            case 4 
              q = quiver([point(1) point(1)],[point(2) point(2)],[-1 0],[0 1],0.5);
              q.LineWidth = 2;
              hold on
            case 5 
              q = quiver([point(1) point(1)],[point(2) point(2)],[-1 1],[0 0],0.5);
              q.LineWidth = 2;
              hold on
            case 6 
              q = quiver([point(1) point(1)],[point(2) point(2)],[0 0],[-1 1],0.5);
              q.LineWidth = 2;
              hold on
            case 7 
              q = quiver([point(1) point(1)],[point(2) point(2)],[-1 1],[-1 1],0.25);
              q.LineWidth = 2;
              hold on
            case 8 
              % do nothing in case 8   
        end
    end
    
end
