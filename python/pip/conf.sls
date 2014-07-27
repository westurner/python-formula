/etc/pip.conf:
  file.managed:
    - source: salt://python/pip/files/pip.conf.jinja
    - template: jinja
    - user: root
    - group: root
    - mode: 0644

{#
# TODO: stage early (/etc/skel)
('vagrant', '/home/vagrant'),
('ubuntu', '/home/ubuntu'),

{% set addl_users = pillar.get('users:users') %}
{% for addl_user in addl_users %}

{% endfor %}
#}
{% set userdirs=[
('root', '/etc/skel'),
('root', '/root'),
] %}
{% for user, dir in userdirs %}
{{ dir }}/.pip:
  file.directory:
    - user: {{ user }}
    - group: {{ user }}
    - dir_mode: 0755
    #- require:
    #  - user: {{ user }}

{{ dir }}/.pip/pip.conf:
  file.managed:
    - source: salt://python/pip/files/pip.conf.jinja
    - template: jinja
    - user: {{ user }}
    - group: {{ user }}
    - mode: 0644
    - require:
      - file: {{ dir }}/.pip
      #- user: {{ user }}
{% endfor %}

# TODO: append PIP_CONFIG_FILE to /etc/profile
# http://pip.readthedocs.org/en/latest/user_guide.html#config-file
