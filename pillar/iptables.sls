iptables:
  forward:
    - interface: eth0
    - protocol: tcp

    nat:
      - interface: eth0

      tcp_ports:
        - 4505
        - 4506
