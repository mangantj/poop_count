# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

## League
new_league = League.where(name: "Something For The Bois", description: "Here we are").first_or_create

## Users for League

users = []
["Craig Dobson", "Mike Sherman", "Colten Jones"].each do |name|
  name_split = name.split(" ")
  email = "#{name_split[0]}+#{name_split[1]}@gmail.com"
  user = User.where(first_name: name_split[0], last_name: name_split[1], email: email, super_admin: false).first_or_initialize
  if user.new_record?
    user.password = "password"
    user.save!
  end

  users << user

  if user.leagues.count == 0
    user.leagues << new_league
  end
end

## Create poops
monday = DateTime.now.monday
sunday = DateTime.now.sunday
monday.upto(sunday) do |day|
  day = day.beginning_of_day
  users.each do |user|
    count = [1,2,3].sample
    count.times do |index|
      star_rating = [1,2,3,4,5].sample
      user.poops.create(stars: star_rating, time: day + (index * 2.hours))
    end
  end
end