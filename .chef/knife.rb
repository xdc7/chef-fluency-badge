# See http://docs.chef.io/config_rb_knife.html for more information on knife configuration options

current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "xdc7"
client_key               "#{current_dir}/xdc7.pem"
chef_server_url          "https://api.chef.io/organizations/juzer"
cookbook_path            ["#{current_dir}/../cookbooks"]
knife[:editor] = "C:\\progra~2\\notepa~1\\notepad++.exe -nosession -multiInst"