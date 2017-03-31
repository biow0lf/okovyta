lock '3.8.0'

set :application, 'okovyta'
set :repo_url, 'https://github.com/biow0lf/okovyta.git'
set :branch, :master
set :deploy_to, '/home/okovytaapp/www'
set :rails_env, 'production'
set :conditionally_migrate, true

set :rbenv_type, :user
set :rbenv_ruby, File.read('.ruby-version').strip

# Default value for :linked_files is []
# append :linked_files, "config/database.yml", "config/secrets.yml"

set :linked_files, fetch(:linked_files, []).push('config/database.yml',
                                                 'config/newrelic.yml',
                                                 'config/initializers/secret_token.rb')


# Default value for linked_dirs is []
# append :linked_dirs, "log", "tmp/pids", "tmp/cache", "tmp/sockets", "public/system"

set :linked_dirs, fetch(:linked_dirs, []).push('log', 'tmp/pids', 'tmp/cache', 'tmp/sockets', 'vendor/bundle', 'public/system')

# Default value for default_env is {}
# set :default_env, { path: "/opt/ruby/bin:$PATH" }

# Default value for keep_releases is 5
# set :keep_releases, 5
set :keep_releases, 3

set :bundle_jobs, 4
set :bundle_binstubs, -> { shared_path.join('bin') }

set :puma_preload_app, false
set :puma_prune_bundler, true
set :puma_workers, 2

namespace :deploy do
  after :restart, :clear_cache do
    on roles(:web), in: :groups, limit: 3, wait: 10 do
      # Here we can do anything such as:
      # within release_path do
      #   execute :rake, 'cache:clear'
      # end
    end
  end
end
