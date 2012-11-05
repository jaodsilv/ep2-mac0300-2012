function g = convol(f, w)

  hl = size(f);
  g = f;

  for x = [2:hl(1)-1]
    for y = [2:hl(2)-1]
      g(x,y) = 0;
      for s = [-1:1]
        for t = [-1:1]
          g(x,y) = g(x,y) + w(s+2, t+2)*f(x+s, y+t);
        endfor
      endfor
    endfor
  endfor

endfunction
