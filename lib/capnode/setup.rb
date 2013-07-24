Capistrano::Configuration.instance(true).load do
  namespace :capsum do
    desc 'upload example files to server on deploy:setup'
    task :setup do
      logger.trace "now execute my own task"
      run "mkdir -p /home/gxw/demo/htdocs"
    end
  end
  
  after "deploy:setup", "capsum:setup"
end