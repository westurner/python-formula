
{% from "python/map.jinja" import python2 with context %}

python2:
  pkg:
    - installed
    - name: {{ python2.pkg }}

{% from "python/map.jinja" import python3 with context %}

python3:
  pkg:
    - installed
    - name: {{ python3.pkg }}
