{# This is for Ubuntu #}

python-nose:
  pkg:
    - installed

python-coverage:
  pkg:
    - installed

python-nosexcover:
  pkg:
    - installed

python-pytest:
  pkg:
    - installed

python-tox:
  pkg:
    - installed
  require:
    - pkg: python-pytest
