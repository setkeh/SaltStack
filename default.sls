GitPython:
  pip.installed:
    - name: 'GitPython < 2.0.9'

/etc/salt/minion:
  file.managed:
    - source: salt://files/etc/salt/minion
    - user: root
    - group: root
    - mode: 640

salt-minion:
  service.running:
    - enable: True
