install_global_packages:
  pkg.installed:
    - pkgs:
      - vim-enhanced
      - net-tools
      - firewalld
      - git
      - openssh

restartdefaultfirewall:
  module.run:
    - name: service.restart
    - m_name: firewalld
