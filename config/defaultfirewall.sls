public:
  firewalld.present:
    - name: public
    - default: true
    - ports:
      - 22/tcp
