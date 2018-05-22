function defocussed = DefocusImage(image,z,grating,check)
image1 = image(1:250,:);
if(check == 1)
  image1 = image1.*grating;
endif
image2 = image(251:500,:);
if(check == 1)
  image2 = image2.*grating;
endif
image1 = blur(image1,0);
image2 = blur(image2,z);
defocussed = [image1;image2];
end

