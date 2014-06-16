#
# Cookbook Name:: hadoop
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe "java"

yum_repository 'cloudera-cdh5' do
  description 'Cloudera\'s Distribution for Hadoop, Version 5'
  baseurl 'http://archive.cloudera.com/cdh5/redhat/6/x86_64/cdh/5/'
  gpgkey 'http://archive.cloudera.com/cdh5/redhat/6/x86_64/cdh/RPM-GPG-KEY-cloudera'
  action :create
end

%w[hadoop-conf-pseudo].each do |pkg|
  package pkg
end
