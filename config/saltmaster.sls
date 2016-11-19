saltmasterpublic:
  firewalld.present:
    - name: public
    - default: True
    - masquerade: False
    - ports:
      - 22/tcp
      - 4505/tcp
      - 4506/tcp
      - 80/tcp

restartsaltmasterfirewall:
  module.run:
    - name: service.restart
    - m_name: firewalld

/srv/salt:
  - git

gitfs_remotes:
  - https://github.com/setkeh/SaltStack.git
