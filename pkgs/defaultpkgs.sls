install_global_packages:
  pkg.installed:
    - pkgs:
      - vim-enhanced
      - net-tools
      - firewalld
      - git
      - openssh
      - wget

GitPython:
  pip.installed:
    - name: 'GitPython < 2.0.9'

restartdefaultfirewall:
  module.run:
    - name: service.restart
    - m_name: firewalld
