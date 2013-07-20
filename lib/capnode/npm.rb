Capistrano::Configuration.instance(true).load do
  namespace :npm do
    desc 'npm update the repo npm'
    task :update do
      # Dir["**/*.example", "**/*.sample"].each do |source|
      #   target_dir = File.join(shared_path, File.dirname(source))
      #   target_file = File.basename(source, ".*")
        
      #   run "mkdir -p '#{target_dir}'"
      #   top.upload(source, File.join(target_dir, target_file))
      # end
      logger.debug "now execute npm update"
      run "cd #{current_path}; npm update"
    end
  end
  
  after "deploy:setup", "npm:update"
end