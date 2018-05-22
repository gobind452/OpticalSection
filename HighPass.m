function new = HighPass(image,m,n,x)
filter = ones(m,n);
a = floor((m-x)/2);
b = floor((n-x)/2);
for i = a: m-a
  for j = b:n-b
    filter(i,j) = 0;
  end
end
ft = fftshift(fft2(image,m,n));
ft = ft.*filter;
new = ifft2(ft);
new = abs(new);
end
 