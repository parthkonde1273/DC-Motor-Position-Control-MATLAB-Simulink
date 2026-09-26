%% Simulate DC Motor
%V = 1;
%J = 3.2284E-6; % kg.m^2
%b = 3.5077E-6; % Nms
%Kb = 0.0274; % V/rad/sec
%Kt = 0.0274; % Nm/Amp
%R = 4; % ohm
%L = 2.75E-6; %H
%sim('dcmotorm')
%% DC Motor Position Control Using PID Controller
% MATLAB + Simulink
clc;
clear;
close all;
%% DC Motor Parameters
v = 1;                  % Initial/reference voltage (V)
J = 3.2284E-6;          % Moment of inertia (kg.m^2)
b = 3.5077E-6;          % Viscous friction coefficient (Nms)
Kb = 0.0274;            % Back EMF constant (V/rad/s)
Kt = 0.0274;            % Torque constant (Nm/A)
R = 4;                  % Armature resistance (Ohm)
L = 2.75E-6;            % Armature inductance (H)
%% Position Control Parameters
desiredPosition = 1;    % Desired angular position (rad)
%% PID Controller Parameters
Kp = 1;
Ki = 1;
Kd = 0;
%% Disturbance Parameters
loadTorque = 0.0001;         % External load torque (Nm)
disturbanceTime = 5;    % Time at which disturbance is applied (s)
%% Simulation Parameters
simulationTime = 10;    % Simulation time (s)
%% Run Simulink Model
sim('dcmotorm');