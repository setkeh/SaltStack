base:
  '*salt*':
    - config.saltmaster
  '*':
    - config.userconfig
    - pkgs.defaultpkgs
    - config.defaultfirewall
    - default
  '*web*':
    - pkgs.webpkgs
    - config.webconfig
