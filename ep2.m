option = argv(){1};
image = argv(){2};

if option == "-contrast"
  contrast(image);
elseif option == "-blur"
  blur(image);
elseif option == "-sharpen"
  sharpen(image);
else printf("error");
