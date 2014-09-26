# config/deploy/vagrant.rb
set :rails_env, "production"
# set :user, "vagrant"

server "127.0.0.1", user: 'vagrant', roles: %w{web app db}, primary: true

# default_environment["RAILS_ENV"] = rails_env

set :ssh_options, {
  keys: %w(/Users/dunyakirkali/.vagrant.d/insecure_private_key),
  port: 2200
}
