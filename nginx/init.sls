nginx:
  pkg:
    - installed
  service.running:
    - watch:
      - pkg: nginx
      - file: /etc/nginx/nginx.conf
      - file: /etc/nginx/conf.d/provision.conf
      - file: /etc/nginx/conf.d/weechat.conf
      - file: /etc/nginx/conf.d/presentation.conf

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

/var/www/html/presentation:
  file.directory:
    - user: nginx
    - group: nginx
    - dir_mode: 755
    - file_mode: 644

/var/www/html/presentation/index.html:
  file.managed:
    - source: salt://files/var/www/html/presentation/index.html
    - user: nginx
    - group: nginx
    - mode: 640
