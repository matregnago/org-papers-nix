{
  description = "A collection of flake templates";
  outputs = { self }: {
    templates = {
      sbc = {
        path = ./sbc;
        description = "SBC template";
      };
      infufrgs = {
        path = ./infufrgs;
        description = "INF/UFRGS thesis/dissertation template (infufrgs class)";
      };
      default = self.templates.sbc;
    };
  };
}
