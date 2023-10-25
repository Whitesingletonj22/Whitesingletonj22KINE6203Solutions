% This program is designed to process data from an imported file.
% To run this program simply type "Assignment4" into the command window.


%  John White-Singleton
%  Assignment 4 KINE 6803
%
%   Last updated 10-25-2023
%
%   This program will use an imported file and deliver a report based on
%   the average data points by subject, gender, and provide data on how
%   many subjects saw an increase in their personal strength training data.



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%  The first piece of code in my main file calls the imported file
%  (isok_data_6803.csv) and allows the program to have access to the data.
%  This program will take the data, and analyze it, then give a report
%  detailing averages for both individuals and grouped by gender.  In
%  addition it will also give the number of subjects that documented a
%  change between day 1 and day 2, as well as between day 2 and day 3.
[SubjectID, Age, Gender, Weight, Day1, Day2, Day3] = importfile('isok_data_6803.csv');


    
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%  This calls the function labeled genderIsoCalc.  More information on its
%  workings are annotated within the original function file.
[maleIsoIndMeans, femaleIsoIndMeans, maleGroupIsoMean, femaleGroupIsoMean] = genderIsoCalc(Day1, Day2, Day3, Gender); 



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% The following code calls the function dayComparer.  This will pull the data from the imported file and show a number of times 
% a subject had an increase from day 1 to day 2, and from day 2 to day 3.  
% I attempted to have it show the Subject ID of the individual subjects who had increases 
% but i could not get it to work so I had it print in the command window below instead of the CSV file.
[day1Day2Change] = dayComparer(SubjectID, Day1, Day2); 
[day2Day3Change] = dayComparer(SubjectID, Day2, Day3); 

fprintf('Subjects with an increase from day 1 to day 2: %s\n', mat2str(day1Day2Change));
fprintf('Subjects with an increase from day 2 to day 3: %s\n', mat2str(day2Day3Change));

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%    
%    This section actually gave me a problem writing it as I had originally
%    used a much longer method of writinging the math out, then I
%    remembered the built in mean function.

avgWeight = mean(Weight);   %  This line I had to look up.  I had left it out not realizing it was needed and couldnt get anything to want to calculate correctly.
day1mean = mean(Day1);      
day2mean = mean(Day2);      
day3mean = mean(Day3);      

normDay1mean = day1mean/avgWeight;     %
normDay2mean = day2mean/avgWeight;     %  These lines were looked up along with the line above.  The weighting as a thing I was unfamiliar with and had to learn what it meant and how to code for it.
normDay3mean = day3mean/avgWeight;     %   I learned that even though mean is not the beginning of the variable, it still has to be lower case so Matlab recognizes it as a built in function and not a generic naming protocol.


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Originally I assumed there needed to be 25 lines and this was giving me
% a problem.  I was able to find a solution using a table that was actually
% easier to read by having 13 rows per column & better accomodated for the 
% uneven number of data points due to there being more of the individual male data averages.
           
femaleIsoIndMeans(13,1) = NaN;            
maleGroupIsoMean(13,1) = NaN;             
femaleGroupIsoMean(13,1) = NaN;           
day1Day2Change(13,1) = NaN;                  
day2Day3Change(13,1) = NaN;                   
normDay1mean(13,1) = NaN;                 
normDay2mean(13,1) = NaN;                 
normDay3mean(13,1) = NaN; 


% This final piece will generate a table, and save the file in a excel readable format for easy
% access

results = table(maleIsoIndMeans,femaleIsoIndMeans,maleGroupIsoMean,femaleGroupIsoMean,day1Day2Change,day2Day3Change,normDay1mean,normDay2mean,normDay3mean);

writetable(results,'iso_results.csv');


