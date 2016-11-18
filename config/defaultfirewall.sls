public:
  firewalld.bind:
    - name: public
    - interfaces:
      - eth0

{% if grains['host'] != 'web1' %}
defaultpublic:
  firewalld.present:
    - name: public
    - default: true
    - masquerade: False
    - ports:
      - 22/tcp
      - 4505/tcp
      - 4506/tcp
{% endif %}

Make sure the mysql service is running:
  service.running:
    - name: firewalld
