function contrast(f, outputName)
  hl = size(f);
  h = hx(f, hl);

  g = setImage(f, h, hl);
  imwrite(g, outputName);
endfunction

function h = hx(f, hl)
  n = hl(1) * hl(2);

  p = px(f, hl);
  [fda, minimum] = fdax(p);

  h = fda-minimum;
  h = round((h/(n-minimum))*255);
endfunction

function p = px(f, hl)
  p = zeros(1, 256);

  for i = [1:hl(1)]
    for j = [1:hl(2)]
      p(f(i, j)+1)++;
    endfor
  endfor
endfunction

function [fda, minimum] = fdax(p)
  fda = zeros(1, 256);
  minimum = 0;

  for i = [1:256]
    for j = [1:i]
      fda(i) += p(j);
    endfor
    if (minimum >0 && fda(i) > 0)
      minimum = fda(i);
    endif
  endfor
endfunction

function g = setImage(f, h, hl)
  g = f;
  for i = [1:hl(1)]
    for j = [1:hl(2)]
      g(i, j) = h(f(i,j)+1);
    endfor
  endfor
endfunction
