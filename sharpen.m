function sharpen(f, outputName)

  w = [-1, -1, -1; -1, 8, -1; -1, -1, -1];
  intermediario = convol(f, w);
  intermediario
  imwrite(uint8(intermediario), "intermediario.jpg");
  g = uint8(f + intermediario);
  imwrite(g, outputName);

endfunction
