function [p_e]=proberr(L,epsilon)
syms k
p_e = symsum(((factorial(L)/(factorial(round(k))*factorial(L-round(k))))*(epsilon^k)*((1-epsilon)^(L-k))), k, round(L/2), L);
%3rd and 4th variable of symsum is sum of series bounds such as for L=3...
%round(L/2)=2 so our k variable change in 2 and 3.
%%symsum is sum of series function in MATLAB. We just taken sum of series
%%%function in matlab
end
