# TODO: smarter check than the .5 in 1.5

include:
  - python.pip.system2

pip_upgrade_pip:
  cmd.run:
    - name: sudo pip install -U pip
    - onlyif: "test $(pip --version | cut -f 2 -d ' ' |  cut -f 2 -d '.') -lt 5"
    - require:
      - pkg: python-pip

