package 'httpd' do

end

service 'httpd' do
  action [:enable, :start]
end

file '/var/www/html/index.html' do
  content 'Hello World'
  mode '0755'
  owner 'root'
  group 'apache'
end

file '/etc/motd' do
  content 'Welcome, Juzer'
end

execute 'command-test' do
  command 'echo blah >> /etc/motd'
  not_if {File.exists?('/etc/motd')}
end
