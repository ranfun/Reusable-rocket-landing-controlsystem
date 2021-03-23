%defining parameters
close all
clear all
clc
m=25.222; %Mass of the rocket
g=9.81; %Acceleration due to gravity
l1=3.8677;
l2=3.7;
ln=0.1892;
J=482.2956;
Fe=realp('Fe',m*g);
Fs=realp('Fs',0);
psi=realp('psi',0);
theta=realp('theta',deg2rad(0));
Fe.Minimum=0;
Fe.Maximum=6486;
Fs.Minimum=-130;
Fs.Maximum=130;
psi.Minimum=deg2rad(-15);
psi.Maximum=deg2rad(15);
theta.Minimum=deg2rad(-10);
theta.Maximum=deg2rad(10);