#
# Cookbook Name:: dotfiles
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

dotfiles_repos = "https://github.com/momentspace/dotfiles.git"
dotfiles_dir = File.join(node[:dotfiles][:dir], "dotfiles")
git dotfiles_dir do
  repository dotfiles_repos
  action :sync
  user node[:dotfiles][:user]
  group node[:dotfiles][:group]
end

shell = File.join(node[:dotfiles][:dir], "dotfiles/configure.sh")
execute shell do
  action :run
  user node[:dotfiles][:user]
  group node[:dotfiles][:group]
  ignore_failure true
end

