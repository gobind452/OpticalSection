function blurred = blur(image,z);
x = linspace(-20,20,250);
y = linspace(-20,20,250);
[x,y] = meshgrid(x,y);
otf = exp((-0.125-z*z)*(x.*x+y.*y));
ft = fftshift(fft2(image));
ft = ft.*otf;
blurred = ifft2(ft);
blurred = abs(blurred);
blurred = blurred/max(max(blurred));
end
