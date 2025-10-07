{ pkgs }: {
    deps = [
      pkgs.unzip
      pkgs.zip
      pkgs.tree
      pkgs.wget
      pkgs.wkhtmltopdf-bin
      pkgs.imagemagick
      pkgs.tetex
      pkgs.q
        # add packages here
    ];
}