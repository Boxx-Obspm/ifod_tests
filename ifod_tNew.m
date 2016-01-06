% ifod code's location
% (to be coded as cmd line or default file later)

codPath = '../inflightOD';
scnPath = './';
scnFile = strcat(scnPath, 'scenario');

%% general test

addpath(codPath);
data_extraction
% It DOES produce a result file (name prefix given in Scenario) for every timesteps in T0
% => what are the reducted data used?
% => validate the accuracy of the results

%% tester le fonctionnement de time_step.m
% x produire un jeu d'essai simple
% - commenter les resultats pour comprendre les unites
% - sortir time_step de la release ifod car non embarquee

