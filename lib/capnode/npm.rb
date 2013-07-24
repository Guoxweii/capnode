Capistrano::Configuration.instance(true).load do
  namespace :npm do
    desc 'npm update the repo npm'
    task :update do
      logger.debug "now execute npm update"
      run "cd #{current_path}; npm update"
    end
  end
  
  after "deploy:restart", "npm:update"
end