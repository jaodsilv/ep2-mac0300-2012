function blur(f, outputName)

  w = [1, 2, 1; 2, 4, 2; 1, 2, 1]/16;
  g = uint8(convol(f, w));
  imwrite(g, outputName);

endfunction
