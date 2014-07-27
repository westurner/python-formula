include:
  - python.pip.pypi2

python-dev:
  pkg:
    - installed

libssl-dev:
  pkg:
    - installed

python-virtualenv:
  pkg:
    - installed

virtualenvwrapper:
  pkg:
    - installed

#supervisor:
#  pkg:
#    - installed
#TODO: expects a supervisord.conf file (for /etc/init.d/supervisord)

#python-pytest:
  #pkg:
    #- installed

#python-tox:
  #pkg:
    #- installed
  #require:
    #- pkg: python-pytest
