%Author: Mark Crispo (mark.crispo@dal.ca)
%Date: 2020-06-04
%Comments:
% Dependent on getPowerFromOrbitPath.m
% Any changes to the solar cell layout need to be reflected in
% getPowerFromOrbitPath.m
% This function assumes that the CubeSat is nadir-pointing
% All other assumptions assume worst-case
%


%Theta: Position of CubeSat in its orbital path
%       0  = start of orbit
%       pi = halfway through orbit, directly on the other side of Earth
%       2pi = back to start of orbit
%Each row represents 1 second, 5580 seconds = 93 minutes (ISS orbital
%period)
theta = linspace(0,2*pi,5580);

LEO_alt = 6370 + 400; %altitude of LEO in km

%polar orbit : x,y,z coordinates in kM as a function of theta
%Define a polar orbit
polar_orbit = LEO_alt .* [cos(theta)',sin(theta)',zeros(length(theta),1)];
figure(1)
clf
plot(polar_orbit(:,1),polar_orbit(:,2),'--')
hold on
grid on

%plot the earth
plot(6370.*cos(theta),6370.*sin(theta))

%Create a 51.6degree orbit using rotation matrix
rotation = [1,0,0;0,cosd(38.4),-sind(38.4);0,sind(38.4),cosd(38.4)];
deg52_orbit = polar_orbit*rotation;
%plot(deg52_orbit(:,1),deg52_orbit(:,2),'k:')

%-----------------------------------------------------------------------%

%iterate through all possible orientations of the 51.6deg orbit
%relative to the sun, representing seasonal variation
%find OAP for different variations of 51.6deg orbit

%initialize variables
j=1;

%OAP_vec[i] is the Orbit Average Power at the i'th possible orbit
%orientation
OAP_vec = [0];

for i = 0:10:350
    
    %rotate the 51.6deg orbit by 10 degrees around its vertical axis
    rotation = [cosd(i),0,sind(i);0,1,0;-sind(i),0,cosd(i)]; %rotation matrix    
    new_orbit = deg52_orbit*rotation;
    figure(1)
    plot(new_orbit(:,1),new_orbit(:,2),'k:')   
    
    %OAP_vec[j] is the OAP for this orbit variation
    OAP_vec(j)= mean(getPowerFromOrbitPath(new_orbit));
    j=j+1; 
end

legend('LEO - 400km','Earth','Orbit Path','Location','northeastoutside')
hold off

disp('worst case OAP')
min(OAP_vec) %4.38W

disp('best case OAP')
max(OAP_vec) %5.89W

%-----------------------------------------------------------------------%

%define worst case orbit
%worst case occurs at 0 degrees / 180 degrees
%best case occurs at 90 degrees / 270 degrees
i = 0;
rotation = [cosd(i),0,sind(i);0,1,0;-sind(i),0,cosd(i)];
worst_case_orbit = deg52_orbit * rotation;
input_power = getPowerFromOrbitPath(worst_case_orbit);
figure(2);clf;
t = [1:5580];
plot(t./60,input_power); grid on;
hold on;
plot(t./60,mean(input_power).*ones(length(t)))
xlabel('Time [Minutes]');ylabel('Input Power [W]');
title('Power Intake for Orbital Period of 93 Minutes');
xlim([0 93]); legend('Instaneous Power','Orbit Average Power','location','northwest')

%define output matrix for dimitri
power_in = [t' input_power'];