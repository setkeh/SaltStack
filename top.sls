base:
  '*':
    - config.userconfig
    - pkgs.defaultpkgs
    - config.defaultfirewall
  '*web*':
    - pkgs.webpkgs
    - config.webconfig
