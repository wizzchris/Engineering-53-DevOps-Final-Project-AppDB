#
# Cookbook:: node_cookbook
# Recipe:: default
#
# Copyright:: 2020, The Authors, All Rights Reserved.

package "nginx"

service "nginx" do
  action [:enable, :start]
end

include_recipe 'apt'
include_recipe 'nodejs'
nodejs_npm 'pm2'
