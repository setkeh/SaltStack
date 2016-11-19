base:
  '*salt*':
    - config.saltmaster
  '*':
    - config.userconfig
    - pkgs.defaultpkgs
    - config.defaultfirewall
  '*web*':
    - pkgs.webpkgs
    - config.webconfig
