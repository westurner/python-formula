
{% from "python/map.jinja" import python2 with context %}

{% for pkg in python2.dev_pkgs %}
python2-dev-{{ pkg }}:
  pkg:
    - installed
    - name: {{ pkg }}
{% endfor %}

{% from "python/map.jinja" import python3 with context %}

{% for pkg in python3.dev_pkgs %}
python3-dev-{{ pkg }}:
  pkg:
    - installed
    - name: {{ pkg }}
{% endfor %}
