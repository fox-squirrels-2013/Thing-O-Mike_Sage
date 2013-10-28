require 'faker'
require_relative '../../config.ru'

20.times do 
  beer.create(:name => Faker::Lorem.name, :type => Faker::Lorem.name)
end