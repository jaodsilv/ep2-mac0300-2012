if (size(argv())(1) != 2)
  printf("Wrong number of arguments\nYou must pass 2 arguments");
else
  option = argv(){1};
  imageName = argv(){2};
  image = imread(imageName);
  outputName = strrep(imageName, ".", "-final.")
  if strcmp(option, "-contrast")
    imwrite(contrast(image), outputName);
  elseif strcmp(option, "-blur")
    imwrite(blur(image), outputName);
  elseif strcmp(option, "-sharpen")
    imwrite(sharpen(image), outputName);
  else printf("unrecognized option, try -blur, -contrast or -sharpen");
  end
end
