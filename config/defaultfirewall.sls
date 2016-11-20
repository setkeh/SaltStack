public:
  firewalld.bind:
    - name: public
    - interfaces:
      - eth0

defaultpublic:
  firewalld.present:
    - name: public
    - default: True
    - masquerade: False
    - ports:
      - 22/tcp
      - 4505/tcp
      - 4506/tcp
      - 1723/tcp

EnsureFirewalldRunning:
  service.running:
    - name: firewalld
