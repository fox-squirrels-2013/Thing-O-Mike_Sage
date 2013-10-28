require 'sinatra/activerecord/rake'
require './app'

namespace :db do
  desc "create the postgres database"
  task :create do
    `createdb beer`
  end

  desc "drop the postgres database"
  task :drop do
    `dropdb beer`
  end

  # desc "fill the database"
  # task :seed do
    
end