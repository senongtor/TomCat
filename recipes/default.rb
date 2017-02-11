#
# Cookbook:: tomcat
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.
#package 'openjdk-7-jdk'
execute "update" do
  command "sudo apt-get update"
end

execute "install-jdk" do
  command "sudo apt-get install -y openjdk-7-jdk"
end

# group 'tomcat'
# user 'tomcat' do
#   manage_home false
#   shell '/bin/nologin'
#   group 'tomcat'
#   home '/opt/tomcat'
# end

remote_file 'apache-tomcat-7.0.75.tar.gz' do
  source 'http://www.us.apache.org/dist/tomcat/tomcat-7/v7.0.75/bin/apache-tomcat-7.0.75.tar.gz'
end

execute 'tar xzf apache-tomcat-7.0.75.tar.gz'
execute 'sudo mv apache-tomcat-7.0.75 /usr/local/tomcat7'

# directory '/usr/local/tomcat7' do
#   recursive true
#   mode '0007'
# end

execute 'sudo /usr/local/tomcat7/bin/./startup.sh'
