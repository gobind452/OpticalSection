An image is supplied in the repository. Convert that image into a 500*250 image.(The whole process is applicable on 250*250 images).
Pass that image into the Defocus Image function. This function assumes the first 250*250 block is in focus while the next 250*250 is in defocus at a distance z which can be supplied into the function. The returned image is the image we will get from a conventional microscope.
Now use the OpticalSection function to pass in the same parameters and get the sectioned image i.e the image where will the lower block will be very dim implying we only take the infocus part of the object.

An additional HighPass function is supplied which obviously applies a high pass filter to any given image. 
All functions are supplied with comments.

References - Structured illumination microscopy for super-resolution
and optical sectioning
Dan Dan • Baoli Yao • Ming Lei
