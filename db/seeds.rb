# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# frozen_string_literal: true
Tag.destroy_all
Location.destroy_all
Photo.destroy_all
Album.destroy_all

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

path_tag = File.join(File.dirname(__FILE__), 'tag.json')
json_location_tag = File.open(path_tag, 'r:bom|utf-8').read
hash_content_location_tag = JSON.parse(json_location_tag)

path_pic = File.join(File.dirname(__FILE__), 'photo.json')
json_location_pic = File.open(path_pic, 'r:bom|utf-8').read
hash_content_location_pic = JSON.parse(json_location_pic)


i=0
20.times do
  location = Location.create(
    name: hash_content_location[i]["name"],
    shortname: hash_content_location[i]["shortname"] )
    i=i+1
end

j=0
30.times do
  tag = Tag.create(title: hash_content_location_tag[j]["title"])
    j=j+1
end

# j=0
number_of_photos = 2
number_of_picture = 0
10.times do
  album= Album.create(
    title: Faker::Kpop.unique.girl_groups,
    description: Faker::Kpop.unique.iii_groups,
    view: rand(3..6))

    one_location = Location.all.sample
    puts one_location
  number_of_photos.times do
    album.photos
            .build(album_id:Faker::IDNumber.unique.valid,
                   title: Faker::Movies::HarryPotter.unique.character,
                   description:'tsestt',
                   imagePath: hash_content_location_pic[number_of_picture]['img']
                  #  privacy: location info
                   )
            .save
            number_of_picture = number_of_picture+1
            # j=j+1
  end
end



# rails db:seeds
#   number_of_picture = rand(2..9)

# tag = \Tag.create( title: relevant)
puts "#{Album.count}"
puts "#{Location.count}"
puts "#{Photo.count}"
puts "#{Tag.title}"

