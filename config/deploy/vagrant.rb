# config/deploy/vagrant.rb
set :rails_env, "production"
set :user, "vagrant"

# server "127.0.0.1", user: user, roles: %w{web app db}, primary: true

default_environment["RAILS_ENV"] = rails_env

ssh_options[:keys] = ['/Users/dunyakirkali/.vagrant.d/insecure_private_key']
ssh_options[:port] = 2200
