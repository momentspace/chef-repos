log_level                :info
log_location             STDOUT
node_name                'moment'
client_key               '/home/moment/chef-repos/.chef/moment.pem'
validation_client_name   'chef-validator'
validation_key           '/etc/chef-server/chef-validator.pem'
chef_server_url          'https://dockstart:443'
syntax_check_cache_path  '/home/moment/chef-repos/.chef/syntax_check_cache'
cookbook_path [ '/home/moment/chef-repos//cookbooks' ]
