public:
  firewalld.present:
    - name: public
    - default: true
    - ports:
      - 22/tcp
      - 4505/tcp
      - 4506/tcp

Make sure the mysql service is running:
  service.running:
    - name: firewalld
