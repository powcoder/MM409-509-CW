% --------------- script Lab2 --------------%
% Once this has finished running, you will have A, n, m, (B), deg (or outdeg and
% indeg), and mean_deg (or mean_outdeg and mean_outdeg) in your workspace.

%% Clear workspace and command window
clear all
clc

%% Load the data
%load('DATASET/zachary1.mat')
load('Datasets19/karate.mat'); A = Problem.A;

%% Compute number of nodes
n = size(A,1);

%% Compute number of edges
if ~isequal(A,A') % if the graph is directed
    m = nnz(A);
else
    m = nnz(A)/2; % number of undirected edges
end

%% Display the sparsity pattern
figure % open a new figure
spy(A) % plot the sparsity pattern

%% Degrees 
deg = degree_adj(A);

if ~isequal(A,A') % if directed
    outdeg = d(:,1); 
    indeg = d(:,2);
    clear deg
end

%% Mean degree

if isequal(A,A')
    mean_deg = mean(deg);
else
    mean_outdeg = mean(outdeg);
    mean_indeg = mean(indeg);
end

%% Incidence matrix - only if A is symmetric

if isequal(A,A')
    B = adj2inc_better(A);
end
