function c = contrast(image, outputName)
hl = size(image);
c = zeros(hl(1), hl(2));
n = hl(1) * hl(2);

px = zeros(1, 256);
fdax = zeros(1, 256);
hx = zeros(1, 256);
minimum = 0;

for i = [1:hl(1)]
  for j = [1:hl(2)]
    px(image(i, j)+1)++;
  endfor
endfor
for i = [1:256]
  for j = [1:i]
    fdax(i) += px(j);
  endfor
  if (minimum >0 && fdax(i) > 0)
    minimum = fdax(i);
  end
endfor

hx = fdax-minimum;

hx = round((hx/(n-minimum))*255);
for i = [1:hl(1)]
  for j = [1:hl(2)]
    image(i, j) = hx(image(i,j)+1);
  endfor
endfor
imwrite(image, outputName);
