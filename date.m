function [timeOut] = date(years,unit)
%UNTITLED11 Summary of this function goes here
%   Detailed explanation goes here

if nargin == 1

     timeOut = years * 365;

elseif nargin == 2

    if unit == 'minutes'
        timeOut = years * 525600
   
    elseif unit == 'seconds'
        timeOut = years * 3.154e+7
    end

       
end


