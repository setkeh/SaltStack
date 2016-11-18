public:
  firewalld.present:
    - name: public
    - default: true
    - ports:
      - 22/tcp

Make sure the mysql service is running:
  service.running:
    - name: firewalld
