install_global_packages:
  pkg.installed:
    - pkgs:
      - vim-enhanced
      - net-tools
      - firewalld
      - git
      - openssh
      - wget
      - epel-release
      - python-pip

restartdefaultfirewall:
  module.run:
    - name: service.restart
    - m_name: firewalld
