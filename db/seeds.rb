# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')

require 'yaml'


companies = YAML.load(File.open(File.expand_path('db/companies.yml')))
puts 'seeding companies details...'
companies.each do |key, value|
  Company.find_or_create_by(name: value['name'],city: value['city'],website: value['website'])
end