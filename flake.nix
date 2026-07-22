{
  description = "A collection of flake templates";
  outputs = { self }: {
    templates = {
      sbc = {
          path = ./sbc;
        description = "SBC template";
      };
    defaultTemplate = self.templates.sbc;
  };
  };
}
