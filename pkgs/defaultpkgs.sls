install_global_packages:
  pkg.installed:
    - pkgs:
      - vim-enhanced
      - net-tools
      - firewalld
      - git
      - openssh
      - wget
      - python-pygit2

restartdefaultfirewall:
  module.run:
    - name: service.restart
    - m_name: firewalld
