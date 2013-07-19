require "capnode/version"
require File.expand_path("../capnode/git.rb", __FILE__)

module Capnode
  # Your code goes here...
end

Capistrano::Configuration.instance(true).load do
  set :use_sudo, false
  
  default_environment["http_proxy"] = fetch("http_proxy") if exists?("http_proxy")
  default_environment["https_proxy"] = fetch("https_proxy") if exists?("https_proxy")
end