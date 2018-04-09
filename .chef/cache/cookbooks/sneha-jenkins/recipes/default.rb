#
# Cookbook:: sneha-jenkins
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved
#
#installing java 
execute 'yum install' do
 command "yum install java-1.8.0-openjdk"
end


#intalling jenkins package
package 'jenkins' do
 action :install
end

#starting and enabling jenkins service 
service 'jenkins' do
 action [ :enable, :start]
end
