# # encoding: utf-8

# Inspec test for recipe tomcat::default

# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/

unless os.windows?
  describe user('root') do
    it { should exist }
    skip 'Root user exists'
  end
end

describe port(8080) do
  it { should be_listening }
  skip 'Is listening to 8080'
end

describe package('openjdk-7-jdk') do
  it { should be_installed }
end

describe file('/usr/local/tomcat7') do
  it{ should exist }
  it{ should be_directory }
  skip 'Tomcat is put in the correct place'
end
