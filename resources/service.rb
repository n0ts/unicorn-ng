#
# Cookbook Name:: unicorn-ng
# Resource:: service
#
# Copyright 2012, Chris Aumann
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.
#

actions        :create
default_action :create

attribute :rails_root,     :kind_of => String, :name_attribute => true
attribute :name,           :kind_of => String, :default => node['unicorn-ng']['service']['name']
attribute :desc,           :kind_of => String, :default => node['unicorn-ng']['service']['desc']
attribute :unicorn_exec,   :kind_of => String, :default => node['unicorn-ng']['service']['unicorn']
attribute :config,         :kind_of => String, :default => node['unicorn-ng']['service']['config']
attribute :pidfile,        :kind_of => String, :default => node['unicorn-ng']['service']['pidfile']
attribute :bundle_gemfile, :kind_of => String, :default => node['unicorn-ng']['service']['bundle_gemfile']
attribute :wrapper,        :kind_of => String, :default => node['unicorn-ng']['service']['wrapper']
attribute :wrapper_opts,   :kind_of => String, :default => node['unicorn-ng']['service']['wrapper_opts']
attribute :bundle,         :kind_of => String, :default => node['unicorn-ng']['service']['bundle']
attribute :environment,    :kind_of => String, :default => node['unicorn-ng']['service']['environment']
attribute :locale,         :kind_of => String, :default => node['unicorn-ng']['service']['locale']
attribute :user,           :kind_of => String, :default => node['unicorn-ng']['service']['user']

attribute :path,           :kind_of => String, :default => node['unicorn-ng']['service']['path']
attribute :owner,          :kind_of => String, :default => node['unicorn-ng']['service']['owner']
attribute :group,          :kind_of => String, :default => node['unicorn-ng']['service']['group']
attribute :mode,           :kind_of => String, :default => node['unicorn-ng']['service']['mode']
attribute :cookbook,       :kind_of => String, :default => node['unicorn-ng']['service']['cookbook']
attribute :source,         :kind_of => String, :default => node['unicorn-ng']['service']['source']
attribute :stderr_path,    :kind_of => String, :default => node['unicorn-ng']['service']['stderr_path']
attribute :stdout_path,    :kind_of => String, :default => node['unicorn-ng']['service']['stdout_path']
attribute :rails_logs,     :kind_of => Array, :default => node['unicorn-ng']['service']['rails_logs']
attribute :logrotate_rotate,   :kind_of => Integer, :default => node['unicorn-ng']['service']['logrotate_rotate']
attribute :logrotate_compress, :kind_of => [TrueClass, FalseClass], :default => node['unicorn-ng']['service']['logrotate_compress']
attribute :variables,      :kind_of => Hash,   :default => node['unicorn-ng']['service']['variables']
