function section = OpticalSection(image,frequency,z);
createGrating("grating1.jpg",frequency,0,0);
createGrating("grating2.jpg",frequency,2*pi/3,0);
createGrating("grating3.jpg",frequency,4*pi/3,0);
grating1 = double(imread("grating1.jpg"));
grating2 = double(imread("grating2.jpg"));
grating3 = double(imread("grating3.jpg"));
grating1 = grating1/max(max(grating1));
grating2 = grating2/max(max(grating2));
grating3 = grating3/max(max(grating3));
image1 = DefocusImage(image,z,grating1,1);
image2 = DefocusImage(image,z,grating2,1);
image3 = DefocusImage(image,z,grating3,1);
section = sqrt((image2-image1).*(image2-image1) + (image3-image2).*(image3-image2) + (image3-image1).*(image3-image1))*sqrt(2)/3;
end
