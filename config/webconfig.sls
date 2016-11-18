webpublic:
  firewalld.present:
    - name: public
    - default: true
    - ports:
      - 22/tcp
      - 4505/tcp
      - 4506/tcp
      - 80/tcp
