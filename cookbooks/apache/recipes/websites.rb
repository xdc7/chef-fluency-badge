file 'default www' do
  path '/var/www/html/index.html'
  content 'hello world v2.0'
  owner 'root'
  group 'apache'
  mode '0755'
  action :create
end

webnodes = search('node', 'role:web')

webnodes.each do |node|
  puts node
end
