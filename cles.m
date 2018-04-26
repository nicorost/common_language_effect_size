function [z, perc, m1, m2, sd1, sd2] = cles(a, b)
% cles - renders common language effect size for two data vectors a and b
%
% Inputs:
%    a - first data vector
%    b - second data vector
%
% Outputs:
%    z - z-value
%    perc - probability that a case randomly selected from vector a will 
%           have a higher score than a case randomly selected from vector b
%    m1 - mean of a
%    m2 - mean of b
%    sd1 - standard deviation of a
%    sd2 - standard deviation of b
%
% Author: Nicolas Rost (n.rost@fu-berlin.de)
% (C) April 2018


m1  = mean(a);
m2  = mean(b);
sd1 = std(a);
sd2 = std(b);

z = (m1 - m2) / sqrt(sd1^2 + sd2^2);

perc = normcdf(z);
