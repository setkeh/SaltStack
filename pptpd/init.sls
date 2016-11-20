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

defaultvpnrouting:
  firewalld.present:
    - name: public
    - default: True
    - masquerade: True
    - ports:
      - 22/tcp
      - 4505/tcp
      - 4506/tcp
    - port_fwd:
      - 1723/tcp

EnsureVPNFirewalldRunning:
  service.running:
    - name: firewalld

#pptpd-iptables:
#  iptables.append:
#    - table: nat
#    - append: POSTROUTING
#    - out: eth0
#    - jump: MASQUERADE
