% Create a figure
figure;
 % Plot a rectangle
  rectangle('Position', [8, 5, 4, 15], 'EdgeColor', 'k', 'FaceColor', 'k', 'LineWidth', 1);
  hold on;
  rectangle('Position', [9.5, 0, 1, 5], 'EdgeColor', 'k', 'LineWidth', 1);
  hold on;
% Plot three circles inside the first rectangle
center1 = [10, 17];
radius1 = 1.5;
center2 = [10, 13];
radius2 = 1.5;
center3 = [10, 9];
radius3 = 1.5;

 % Set axis limits
  xlim([0 20]);
  ylim([0 20]);
 

 while 1
   %blinking the red light 
   fillcircle(center1,radius1,'r');
   pause(1); 
   fillcircle(center1,radius1,'w');
   
   %blinking the yellow
    fillcircle(center2,radius2,'y');
   pause(1); 
   fillcircle(center2,radius2,'w');
   
   %blinking the green
   fillcircle(center3,radius3,'g');
   pause(1); 
   fillcircle(center3,radius3,'w');
end


% Function to plot a circle
function fillcircle(center, radius,c)
    % Create theta values for the circle
    theta = linspace(0, 2*pi, 100);
    
    % Calculate x and y coordinates of the circle using polar coordinates
    x = center(1) + radius * cos(theta);
    y = center(2) + radius * sin(theta);
    
    % Plot the circle
    fill(x,y,c);
end
