function [maleIsoIndMeans, femaleIsoIndMeans, maleGroupIsoMean, femaleGroupIsoMean] = genderIsoCalc(Day1,Day2,Day3,Gender) %This is calling the funciton genderIsoCalc, a description of the function is on the function file

% Assigning gender values with an easy to use variable
maleIsokData = Gender == 'M';
femaleIsokData = Gender == 'F'; 


% The next set of code will provide the averages for the daily data for the
% individual subjects from the data sheet.   Once again identifying gender
% from the datasheet above allows the program to correctly place the
% subjects in the correct average groupings for both individual and group
% data.
maleIsoIndMeans = (Day1(maleIsokData) + (Day2(maleIsokData) + Day3(maleIsokData))) / 3;
femaleIsoIndMeans = (Day1(femaleIsokData) + (Day2(femaleIsokData) + Day3(femaleIsokData))) / 3;

% This section of code tells the program to take all the Male or all Female
% subjects and group them into a single group to average all of their
% scores.
maleGroupIsoMean = mean(maleIsoIndMeans);
femaleGroupIsoMean = mean(femaleIsoIndMeans); %  This became a lot easier once I learned how to properly use the built in mean function Matlab uses.