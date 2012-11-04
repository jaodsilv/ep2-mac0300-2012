function c = contrast(image)
hl = size(image);
c = zeros(hl(1), hl(2));
n = hl(1) * hl(2);

px = zeros(1, 256);
fdax = zeros(1, 256);
hx = zeros(1, 256);

imfinfo("img03.jpg")

for i = image
  px(i+1)++;
endfor
px /= n;

for i = [1:256]
  for j = [1:i]
    fdax(i) += px(j);
  endfor
endfor

fdaxmin = min(fdax);

for i = [1:256]
  hx(i) = abs(fdax(i)-fdaxmin);
endfor
hx = round((hx/(n-fdaxmin))*255);

hl(1)
hl(2)
for i = [1:hl(1)]
  for j = [1:hl(2)]
    c(i, j) = hx(image(i,j));
  endfor
endfor
