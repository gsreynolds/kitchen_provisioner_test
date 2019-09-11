# InSpec test for recipe kitchen_provisioner_test::default

# The InSpec reference, with examples and extensive documentation, can be
# found at https://www.inspec.io/docs/reference/resources/

describe user('kitchen_test') do
  it { should exist }
end

describe file('/etc/sudoers') do
  it { should be_file }
  it { should be_owned_by 'root' }
  its('group') { should eq 'root' }
  its('mode') { should cmp '0440' }
end

describe directory('/etc/sudoers.d') do
  it { should be_owned_by 'root' }
  its('group') { should eq 'root' }
  # its('mode') { should cmp '0755' }
end

describe file('/etc/sudoers.d/10_kitchen_test') do
  it { should be_file }
  it { should be_owned_by 'root' }
  its('group') { should eq 'root' }
  its('mode') { should cmp '0440' }
  its('content') { should match(/^kitchen_test ALL=\(ALL\) NOPASSWD:ALL$/) }
end
