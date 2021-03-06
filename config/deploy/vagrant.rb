# config/deploy/vagrant.rb
set :user, "vagrant"
set :rails_env, 'production'

server "127.0.0.1", user: 'vagrant', roles: %w{web app db}, primary: true

# default_environment["RAILS_ENV"] = rails_env

set :ssh_options, {
  keys: %w(~/.vagrant.d/insecure_private_key),
  port: 2200
}
