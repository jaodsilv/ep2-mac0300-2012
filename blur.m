function b = blur(image, outputName)

hl = size(image);
g = image;
w = [1/16, 2/16, 1/16; 2/16, 4/16, 2/16; 1/16, 2/16, 1/16];

for x = [2:hl(1)-1]
  for y = [2:hl(2)-1]
    for s = [-1:1]
      for t = [-1:1]
        g(x,y) += w(s+2, t+2)*image(x+s, y+t);
      endfor
    endfor
  endfor
endfor
imwrite(g, outputName);
