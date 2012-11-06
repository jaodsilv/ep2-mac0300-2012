if (size(argv())(1) != 2)
  printf("Wrong number of arguments\nYou must pass 2 arguments");
else
  option = argv(){1};
  imageName = argv(){2};
  imagem = imread(imageName);
  outputName = strrep(imageName, ".", "-final.");

  if (strcmp(option, "-contrast"))
    contrast(imagem, outputName);
  elseif (strcmp(option, "-blur"))
    blur(imagem, outputName);
  elseif (strcmp(option, "-sharpen"))
    sharpen(imagem, outputName);
  else
    printf("unrecognized option, try -blur, -contrast or -sharpen");
  endif

endif
