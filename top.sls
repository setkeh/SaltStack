base:
  '*salt*':
    - config.saltmaster
  '*':
    - config.userconfig
    - pkgs.defaultpkgs
    - config.defaultfirewall
    - default
    - pillar.iptables
  '*web*':
    - pkgs.webpkgs
    - nginx.init
    - config.webconfig
  '*vpn*':
    - pptpd.init
