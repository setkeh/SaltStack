nginx:
  pkg:
    - installed
  service.running:
    - watch:
      - pkg: nginx
      - file: /etc/nginx/nginx.conf
      - file: /etc/nginx/sites-available/default

/etc/nginx/nginx.conf:
  file.managed:
    - source: salt://files/etc/nginx/nginx.conf
    - user: nginx
    - group: nginx
    - mode: 640

/etc/nginx/conf.d/provision.conf:
  file.managed:
    - source: salt://files/etc/nginx/conf.d/provision.conf
    - user: nginx
    - group: nginx
    - mode: 640

/etc/nginx/conf.d/weechat.conf:
  file.managed:
    - source: salt://files/etc/nginx/conf.d/weechat.conf
    - user: nginx
    - group: nginx
    - mode: 640
