after "deploy:finished", "puma:restart"

namespace :puma do
  desc "Start puma"
  task :start do
    on roles(:web) do
      within release_path do
        # execute :bundle, "exec puma -C config/puma.rb 1>log/#{fetch(:rails_env)}.log 2>log/#{fetch(:rails_env)}.log"
        execute :nohup, "bundle exec puma -C config/puma.rb 1>log/#{fetch(:rails_env)}.log 2>log/#{fetch(:rails_env)}.log &"
      end
    end
  end

  desc "Stop puma"
  task :stop do
    on roles(:web) do
      within release_path do
        execute :bundle, "exec pumactl -P tmp/pids/server.pid stop"
      end
    end
  end

  desc "Restart puma"
  task :restart do
    on roles(:web) do
      within release_path do
        if test(:ls, "tmp/pids/server.pid")
          execute :bundle, "exec pumactl -P tmp/pids/server.pid phased-restart"
        else
          invoke "puma:start"
        end
      end
    end
  end
end
