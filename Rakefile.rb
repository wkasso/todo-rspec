task :create do
  system 'rspec --example "Create"'
end

task :read do
  system 'rspec --example "Read"'
end

task :update do
  system 'rspec --example "Update"'
end

task :delete do
  system 'rspec --example "Delete"'
end