%% Computing real logarithm of a real matrix
% by Sherif, N., & Morsy, E.
% in International Journal of Algebra, 2008
% 
% *Reproduce in Code*
% (c) Sebastian Jiro Schlecht: Sunday, 6. January 2019
%
clear; clc; close all;

%% Introduction
% In this example, we reproduce an algorithm (Section 3.1) to compute the
% real logarithm of a square real normal matrix. As a test example we use
% the Hadamard matrix of size 4.

N = 4;
H = hadamard(N) / sqrt(N)

%% MATLAB build-in matrix logarithm
complexLog = logm(H)
expm(complexLog)  

%% real matrix logarithm
realLog = realLogOfNormalMatrix( H )
expm(realLog)