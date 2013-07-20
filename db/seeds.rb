# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Author.create(:username => 'admin', :email => 'admin@admin.com', :password => '123', :password_confirmation => '123')
Author.create(:username => 'admin2', :email => 'admin2@admin.com', :password => 'password', :password_confirmation => 'password')
20.times.do
Article.create(:title => Faker::Lorem.words(rand(7)+1).join(' ').capitalize, :body => Faker::Lorem.words(rand(300)+1).join(' ').capitalize, :tag_list => 'test, lorem')
end

