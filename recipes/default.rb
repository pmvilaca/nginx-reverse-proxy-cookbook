#
# Cookbook Name:: nginx-reverse-proxy
# Recipe:: default
#
# Copyright (C) 2014 Pedro Vilaca
#
# All rights reserved - Do Not Redistribute
#
include_recipe "nginx::#{node['nginx']['install_method']}"

template "#{node['nginx']['dir']}/sites-available/default" do
  source 'default-site.erb'
  owner  'root'
  group  node['root_group']
  mode   '0644'
  notifies :reload, 'service[nginx]'
end
