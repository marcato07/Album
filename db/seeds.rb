# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# frozen_string_literal: true

# Location.destroy_all
Album.destroy_all
# Tag.destroy_all
# Photo.destroy_all
# Comment.destroy_all

# 8.times do
#   picLocation= Location.create(
#     name:Faker::Nation.language.unique.character,
#     shortname:Faker::Nation.flag.unique.character
#     )
# end

require 'faker'
require 'json'

path = File.join(File.dirname(__FILE__), 'location.json')
json_location = File.open(path, 'r:bom|utf-8').read
hash_content_location = JSON.parse(json_location)

5.times do
  album= Album.create(
    title: Faker::Kpop.unique.girl_groups,
    description: Faker::Kpop.unique.iii_groups,
    view: rand(3..6))

  number_of_photos = rand(5..10)

  number_of_photos.times do
    album.photos
            .build(title: Faker::Movies::HarryPotter.unique.character,
                   album_id:Faker::IDNumber.unique.valid )
            .save
  end
end
# rails db:seeds
#   number_of_picture = rand(2..9)


puts "#{Album.count}"
puts "#{hash_content_location[0]["name"]}"
