function q7(vec1, vec2)  % Call q7(vec1,vec2) after assigning the values of the vectors to plot the vectors in a pop up window.
    figure;              % Customize the sections of the plot graph that will be diplayed after calling the function and vectors.
    plot(vec1, vec2);    % Plot vec1 vs. vec2, only after you have estblished what the vectors vec1 and vec2 will contain for assigned values. 
    title('Fancy Plot Title Goes Here');
    xlabel('X Axis Label Here');
    ylabel('Y Axis Label Here');
end
