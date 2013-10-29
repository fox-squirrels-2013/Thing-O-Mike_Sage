require 'sinatra/activerecord/rake'
require './app'

namespace :db do
  desc "create the postgres database"
  task :create do
    `createdb bestbeerwith`
  end

  desc "drop the postgres database"
  task :drop do
    `dropdb bestbeerwith`
  end

  # desc "fill the database"
  # task :seed do

end