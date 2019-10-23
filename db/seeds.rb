# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# frozen_string_literal: true

movieLocation= Location.create({name:'movie', shortname:'mv'})
movieAlbum= Album.create({title: 'tester', description: 'movie', view:123})
puts movieAlbum

