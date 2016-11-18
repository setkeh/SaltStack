webpublic:
  firewalld.present:
    - name: public
    - default: True
    - masquerade: False
    - ports:
      - 22/tcp
      - 4505/tcp
      - 4506/tcp
      - 80/tcp

restartwebfirewall:
  module.run:
    - name: service.restart
    - m_name: firewalld
