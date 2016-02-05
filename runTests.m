% ifod code's location
% (to be coded as cmd line or default file later)

clear;
codPath = '../inflightOD';
scnPath = './';
scnFile = strcat(scnPath, 'scenario');

%% general test

tf = fopen('test_results', 'a');
fprintf(tf, '\n--------------------\n');
fprintf(tf, 'Tests - New features: %s\n', date);
fprintf(tf, '--------------------\n');
tested=input('Tested in both Octave + Matlab ("Yes" otherwise no)?', 's');
if (length(tested) ~= 3) tested='NO*'; end;
if (tested ~= 'yes') tested='** NO **'; end;
fprintf(tf, 'Tested in both Octave & Matlab? %s\n', tested);
fprintf(tf, 'Reduced scenario: %s\n', scnFile);
fprintf(tf, 'Expected inputs:\n');
fprintf(tf, '- Reference Trajectory set "T0"\n');
fprintf(tf, '- Actual Trajectory set "T1"\n');
fprintf(tf, '- Intervals between measurements for OD\n');
fprintf(tf, 'Expected outputs:\n');
fprintf(tf, '- OD, i.e. reconstructed X for every time step\n');
fprintf(tf, '- difference between OD (reconstructed) and T1 (expected)\n');
fprintf(tf, '\n');

addpath(codPath);
data_extraction
% Ok: it DOES produce a result file (name prefix given in Scenario) for every timesteps in T0
% => validate the inputs:
%    (new feature) Always same T0, selections for T1 => selection for T0 to be allowed
%    (new feature) Allow relative paths
% => validate the outputs
%    time of measurements (time steps) are given in hours (ok) then converted and averaged (not ok!)

fprintf(tf, 'data_extraction.m:\n');
fprintf(tf, '\n');


fprintf(tf, 'Interpolations: time_step.m\n');
%% Caracteriser le fonctionnement de time_step.m
% function [timeStep]=time_step(ii,T,dt,trajectory_name,trajectory_name_ephjup)
fprintf(tf, '>= Inputs: ii,T,dt,Timelist\n');
fprintf(tf, '=> Outputs: timeStep\n');
fprintf(tf, '\n');

% JD  = 2458186.50068339239805937
% MJD = JD-MJD_0 = JD-2400000.5= 58186.00068..
ii=50; iiT=2; % iiT=2 pour MJD = 58165 days +28859.05 sec
% all other inputs available in workspace from data_extraction
fprintf(tf, '>= ii: %d\n', ii);
fprintf(tf, '>= T("ii"), dt("ii"): %d MJD %6.0f s. %d h. %d h. %d h.\n' , T(iiT,:), dt(iiT,:));
fprintf(tf, '>= Timelist(ii): %10.2f JD\n', TimeList1(ii));
outp = time_step(ii,T,dt,trajectory_name,trajectory_name_ephjup);
fprintf(tf, '=> outp(1..3): %d %d %d\n', outp);
%fprintf(tf, '=> "ii-3", Timelist("ii-3"): -%d, %10.2f JD\n', sum(outp(1:3)), TimeList1(ii-sum(outp(1:3))));
%fprintf(tf, '=> "ii-2", Timelist("ii-2"): -%d, %10.2f JD\n', sum(outp(1:2)), TimeList1(ii-sum(outp(1:2))));
%fprintf(tf, '=> "ii-1", Timelist("ii-1"): -%d, %10.2f JD\n', sum(outp(1:1)), TimeList1(ii-sum(outp(1:1))));
fprintf(tf, '=> "ii+1", Timelist("ii+1"): +%d, %10.2f JD\n', sum(outp(1:1)), TimeList1(ii+sum(outp(1:1))));
fprintf(tf, '=> "ii+2", Timelist("ii+2"): +%d, %10.2f JD\n', sum(outp(1:2)), TimeList1(ii+sum(outp(1:2))));
fprintf(tf, '=> "ii+3", Timelist("ii+3"): +%d, %10.2f JD\n', sum(outp(1:3)), TimeList1(ii+sum(outp(1:3))));
fprintf(tf, '\n');

% x produire un jeu d'essai simple
% x commenter les resultats pour comprendre les unites

fprintf(tf, 'Interpolations: test_interpolation.m\n');

% - sortir time_step de la release ifod car non embarquee

fclose(tf);
