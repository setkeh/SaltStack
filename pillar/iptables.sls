ssh: True

forward:
  - interface: eth0
  - protocol: tcp

nat:
  - interface: eth0

tcp_port:
  - 4505
  - 4506
