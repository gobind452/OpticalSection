function new = HighPass(image,m,n,x) % m and n are the rows and columns in the image and x is the extent of the filter
filter = ones(m,n); % higher x , more is the filtering
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
 
