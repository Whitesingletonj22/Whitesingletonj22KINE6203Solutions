function [valid] = tri(array)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here

array = [3,4,5]

   if array(1) + array(2) > array(3)
    valid = true
   elseif array(2)+ array(3) > array(1)
    valid = true
   elseif array(1) + array(3) > array(2)
       valid = true
   else 
       valid = false

   end 
