required_packages:
  pkg.installed:
    - names:
      - git
      - python3-pip
      - python-pip
      - python-m2crypto

codebase:
  git.latest:
    - name: https://github.com/saltstack/salt.git
    - target: /home/vagrant/salt
    - user: vagrant

python_requirements:
  pip.installed:
    - requirements: /home/vagrant/salt/requirements/tests.txt
    - bin_env: /usr/bin/pip3

python2_requirements:
  pip.installed:
    - requirements: /home/vagrant/salt/requirements/tests.txt
