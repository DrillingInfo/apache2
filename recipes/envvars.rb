template "#{node['apache']['dir']}/envvars" do
    source "envvars.erb"
    user "root"
    group node['apache']['root_group']
    mode "0644"
    notifies :restart, "service[apache2]"
end
