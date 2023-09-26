function [avg,letter] = grade(ass1, ass2, ass3)
%UNTITLED8 Summary of this function goes here
%   Detailed explanation goes here
avg = (ass1 + ass2 + ass3)/3

if (avg >= 90)
    letter = "A"
elseif(80 <= avg && avg < 89.9)
    letter = "B"
elseif(70 <= avg && avg < 79.9)
    letter = "C"
elseif(65 <= avg && avg <69.9)
    letter = "D"
else
    letter = "F"
end
end