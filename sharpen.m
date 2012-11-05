function sharpen(f, outputName)

  w = [-1, -1, -1; -1, 8, -1; -1, -1, -1];
  g = convol(f,w);
  imwrite(g, outputName);

endfunction
