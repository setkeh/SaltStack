Dozestation:
  ssh_auth.present:
    - user: root
    - source: salt://ssh_keys/Dozestation/id_rsa.pub
    - config: '%h/.ssh/authorized_keys'
