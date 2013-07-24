Capistrano::Configuration.instance(true).load do
  namespace :npm do
    desc 'npm update the repo npm'
    task :update do
      logger.debug "now execute npm update"
      run "cd ~/current; npm update; node app.js"
    end
  end
  
  after "deploy:restart", "npm:update"
end