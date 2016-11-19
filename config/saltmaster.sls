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

fileserver_backend:
  - git

gitfs_remotes:
  - https://github.com/setkeh/SaltStack.git

state file:
  /srv/salt/:
  file.recurse:
    - env: develop
    - source: salt:///