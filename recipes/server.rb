#
# Cookbook Name:: memcache
# Recipe:: default
#
# Copyright 2013, Jacques Marneweck
#
# All rights reserved - Do Not Redistribute
#

package "memcached" do
  action :install
end

service "pkgsrc/memcached" do
  action :nothing
end

execute "memcached-refresh-service" do
  command "svcadm refresh memcached"
  action :nothing
end

execute "memcached-memory" do
  command "/usr/sbin/svccfg -s memcached setprop config/memory=#{node['memcached']['memory']}"
  not_if "/usr/bin/svcprop -p config/memory memcached | grep ^#{node['memcached']['memory']}$"
  notifies :run, 'execute[memcached-refresh-service]', :immediately
  notifies :enable, resources(:service => "pkgsrc/memcached"), :delayed
  notifies :restart, resources(:service => "pkgsrc/memcached"), :delayed
end
