file 'default www' do
  path '/var/www/html/index.html'
  content 'hello world'
  owner 'root'
  group 'apache'
  mode '0755'
  action :create
end
