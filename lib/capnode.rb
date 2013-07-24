require "capnode/version"
require File.expand_path("../capnode/git.rb", __FILE__)
require File.expand_path("../capnode/setup.rb", __FILE__)
require File.expand_path("../capnode/npm.rb", __FILE__)

module Capnode
  # Your code goes here...
end

Capistrano::Configuration.instance(true).load do
  set :use_sudo, false
  
  default_environment["http_proxy"] = fetch("http_proxy") if exists?("http_proxy")
  default_environment["https_proxy"] = fetch("https_proxy") if exists?("https_proxy")
  
  namespace :deploy do
    desc 'finalize_update'
    task :finalize_update, :roles => :app do
      #do nothing
    end
  end
end