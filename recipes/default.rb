#
# Cookbook:: kitchen_provisioner_test
# Recipe:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.

user 'kitchen_test'

sudo '10_kitchen_test' do
  users ['kitchen_test']
  nopasswd true
end
