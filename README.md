# OpticalSection

Simulates removal of out of focus light from an image using structured illumination techniques

## Working

Out of focus light particularly in microscopes, disturbs the picture and is undesirable. Higher frequencies do attenuate with defocus, but the background zero frequency doesn't. By superimposing gratings on the imaging light, one can shift the image in the frequency spectrum, shifting the zero background. The infocus part would be the one where the grating is in focus. By superimposing various gratings, we obtain different images which are then combined using linear algebra to get the desired opticall sectioned image.

## Schematics

