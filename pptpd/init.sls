pptpd:
  pkg:
    - installed
  service.running:
    - watch:
      - pkg: pptpd
      - file: /etc/pptpd.conf
      - file: /etc/sysctl.conf

/etc/ppp/pptpd.options:
  file.managed:
    - source: salt://files/etc/ppp/pptpd-options
    - user: root
    - group: root
    - mode: 640

/etc/pptpd.conf:
  file.managed:
    - source: salt://files/etc/pptpd.conf
    - user: root
    - group: root
    - mode: 640

/etc/sysctl.conf:
  file.managed:
    - source: salt://files/etc/sysctl.conf
    - user: root
    - group: root
    - mode: 640

EnsureVPNFirewalldRunning:
  service.dead:
    - name: firewalld

iptables:
  pkg:
    - installed
  file.managed:
    - name: /etc/iptables.rules
    - source: salt://iptables/rules
    - template: jinja
  cmd.wait:
    - name: iptables-restore < /etc/iptables.rules
    - watch:
      - file: iptables
    - require:
      - pkg: iptables
