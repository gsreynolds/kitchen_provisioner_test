# kitchen_provisioner_test

Example of using Test Kitchen with InSpec integration tests and the Chef, Puppet & Ansible provisioners for a simple configuration: create a user and add to sudoers.d

If using Chef Workstation Ruby environment:
```
chef exec bundle install --path vendor/bundle
chef exec bundle exec kitchen test
```

If using a plain Ruby install:
```
bundle install --path vendor/bundle
bundle exec kitchen test
```
