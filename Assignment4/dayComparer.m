% This function takes the inputs of the SubjectID's, and two days worth of 
% data and determines if there has been an increase.  If there has it will
% indicate this by increasing the number of subjects who showed this improvement
% on the report under the day1toDay2 and/or the day2toDay3section. 
% There will NOT be a comparision between Day 1 and Day 3 because in the main script
% the code does NOT look for this change. 



function [subjectDayHigh] = dayComparer(SubjectID, Day1Compared, Day2Compared)

increasedDayHigh = find(Day2Compared > Day1Compared);
subjectDayHigh = SubjectID(increasedDayHigh)

end


%  Originally I had attempted to use a lot of "if" statements and it was so
%  convoluted.  I was able to find a more logic based approach
