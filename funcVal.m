function [ y_out ] = funcVal( x, a )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

s = a*( rand(size(x)) - 0.5 );

xs = x.' + s.';

y = (1/pi).*(2+2*xs(3,:)).*(1/3).*(atan(20*exp(xs(5,:)).*(xs(1,:)-0.5+xs(2,:)/6))+(pi/2)) + (1/pi).*(2+2*xs(4,:)).*(1/3).*(atan(20*exp(xs(5,:)).*(xs(1,:)-0.5-xs(2,:)/6))+pi/2);

y_out = y.';

end

