# server-based syntax
# ======================
# Defines a single server with a list of roles and multiple properties.
# You can define all roles on a single server, or split them:
server :local, roles: %w{app web}

# role-based syntax
# ==================
# Defines a role with one or multiple servers. The primary server in each
# group is considered to be the first unless any hosts have the primary
# property set. Specify the username and a domain or IP for the server.
# Don't use `:all`, it's a meta role.
role :app, [:local]
role :web, [:local]

# Configuration
# =============
# You can set any configuration variable like in config/deploy.rb
# These variables are then only loaded and set in this stage.
# For available Capistrano configuration variables see the documentation page.
# http://capistranorb.com/documentation/getting-started/configuration/
# Feel free to add new variables to customise your setup.
set :default_env, {
  RAILS_ENV: "production",
  SECRET_KEY_BASE_DUMMY: 1
}

# Custom SSH Options
# ==================
# You may pass any option but keep in mind that net/ssh understands a
# limited set of options, consult the Net::SSH documentation.
# http://net-ssh.github.io/net-ssh/classes/Net/SSH.html#method-c-start
# set :ssh_options, {
#   keys: %w(/home/user_name/.ssh/id_rsa),
#   forward_agent: false,
#   auth_methods: %w(password)
# }
