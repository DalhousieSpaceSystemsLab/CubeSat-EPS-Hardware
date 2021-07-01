%Author: Mark Crispo (mark.crispo@dal.ca)
%Date: 2020-06-04
%Comments:
% Models the following topology
%   4 x solar panels deployed at 90 degrees
%       Each deployable panel has 4 solar cells
%   2 x solar cells mounted on +X, -X, +Y, -Y faces
%       mounted away from the deployable panel hinge
% Solar cells are 26 cm2
%

function [power] = getPowerFromOrbitPath(xyz)
%takes xyz coordinates, returns instantaneous power for each set of
%coordinates
%xyz is Lx3 matrix, [x y z] (metres)
%power is Lx1 vector [p] (Watts instantaneous power at point x,y,z)
L=size(xyz,1);

%projected radius of CubeSat position on xy plane
%e.g. when projecting the CubeSat orbit path on a 2d plane,
%how far is the CubeSat from point (0,0)?
%Since we assume the CubeSat is nadir pointing, we can make the following
%assumptions:
%when radius_vec = 0, CubeSat is pointing directly away from the Sun
%when radius_vec = 6770km(LEO), CubeSat is orthoganal to sunlight
radius_vec = sqrt(xyz(:,1).^2+xyz(:,2).^2);

%theta = [0-90] pointing orientation of CubeSat
%theta = 0degrees :  CubeSat is pointing directly away from the Sun
%theta = 90degrees: CubeSat is orthoganal to Sun
theta = asind(radius_vec./6770);

%eclipse is a 'boolean' vector indicating when the Sat is in eclipse
%eclipse=1 when cubesat is in eclipse
%cubesat is in eclipse when radius<earth's radius && z<0 (behind earth)
is_eclipsed = zeros(1,L);
for i = 1:L
    is_eclipsed(i) = 1*(radius_vec(i)<6370)*(xyz(i,3)<0);
end

%SA = projected surface area of CubeSat [m2]
SA = zeros(1,L);
for i = 1:L
    
    %PSA = projected Surface Area
    
    %if z < 0, deployables are facing away from sun and cannot receive light
    are_deployables_facing_sun = xyz(i,3) > 0;
    
    %deployable solar panel projected surface area
    deployable_PSA = 0.0026 * 16 * cosd(theta(i)) * are_deployables_facing_sun;

    %body mounted side panel projected surface area
    side_PSA = 0.0026 * 2 * sind(theta(i));
    
    if cosd(theta) > 0.5
        if are_deployables_facing_sun
            %how much of the side panels are exposed to sunlight?
            exposed_side_panel_ratio = 2 * (1 - cosd(theta));
            %if cos(theta) = 0.5, the shadowing doesn't touch the side cels
            %   exposed_side_panel_ratio = 100%
            %if cos(theta) = 0.75, half the side cells are shadowed
            %   exposed_side_panel_ratio = 50%
            %etc
            
            %multiply in shadowing factor
            side_PSA = side_PSA * exposed_side_panel_ratio;
        end
    end
    
    SA(i) = deployable_PSA + side_PSA;

    %if CubeSat is in Eclipse, set surface area to 0
    SA(i) = SA(i)*~is_eclipsed(i);
end

panel_efficiency = 0.28;
solar_energy = 1361; %W/m^2
power = SA.*panel_efficiency.*solar_energy;
end
