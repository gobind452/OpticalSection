# OpticalSection

Simulates removal of out of focus light from an image using structured illumination techniques

## Working

Out of focus light particularly in microscopes, disturbs the picture and is undesirable. Higher frequencies do attenuate with defocus, but the background zero frequency doesn't. By superimposing gratings on the imaging light, one can shift the image in the frequency spectrum, shifting the zero background. The infocus part would be the one where the grating is in focus. By superimposing various gratings, we obtain different images which are then combined using linear algebra to get the desired optical sectioned image.

Refer to this paper - https://www.osapublishing.org/ol/abstract.cfm?uri=ol-22-24-1905

## Schematics
+ DefocusImage.m - Assumes half of the image is in focus and the other half is not( For comparison later). Applies a defocussing function to the not-in-focus half. Parameters include the distance by which the plane is not in focus.

+ HighPass.m - Applies a high pass filter to the given image

+ createGrating.m - Creates a grating image with given frequency and phase

+ blur.m - Helper function for applying the defocussing algorithm

+ OpticalSection.m - Encapsulates all other functions and runs them sequentially. Uses linear algebra to reconstruct the in focus image

## Issues
+ Image parameters hardcoded 
+ Frequency of the grating can be tuned to give vastly different results
