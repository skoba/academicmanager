rails_root = File.expand_path('../', __dir__)
ENV['BUNDLE_GEMFILE'] = rails_root + '/Gemfile'
rails_env = ENV['RAILS_ENV'] || 'production'

worker_processes 1
working_directory rails_root
timeout 60
pid '/home/skoba/src/academicmanager/tmp/pids/unicorn.pid'
stderr_path '/home/skoba/src/academicmanager/log/unicorn.log'
stdout_path '/home/skoba/src/academicmanager/log/unicorn.log'
preload_app true
listen 3000
