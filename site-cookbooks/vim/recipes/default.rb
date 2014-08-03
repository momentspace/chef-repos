#
# Cookbook Name:: vim
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
package "vim" do
  action :install
end

vim_dir = File.join(node[:vim][:dir], ".vim")
directory vim_dir do
  not_if { File.exists? vim_dir }
  action :create
  mode 0755
  owner node[:vim][:user]
  group node[:vim][:group]
end

neobundle_dir = File.join(node[:vim][:dir], ".vim/bundle")
directory neobundle_dir do
  not_if { File.exists? neobundle_dir }
  action :create
  mode 0755
  owner node[:vim][:user]
  group node[:vim][:group]
end

neobundle_file = File.join(neobundle_dir, "neobundle.vim")
git neobundle_file do
  repository "https://github.com/Shougo/neobundle.vim"
  action :sync
  user node[:vim][:user]
  group node[:vim][:group]
end

#execute "vim +':NeoBundleInstall' +:q" do
#  action :run
#  user node[:vim][:user]
#  group node[:vim][:group]
#end

