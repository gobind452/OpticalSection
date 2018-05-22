function [] = createGrating(filename,frequency,phase,angle)
x = linspace(-20,20,250);
y = linspace(-20,20,250);
[X,Y] = meshgrid(x,y);
Z = (1+cos(2*pi*frequency*(cosd(angle)*X+sind(angle)*Y)+phase))/2;
imwrite(Z,filename);
end

