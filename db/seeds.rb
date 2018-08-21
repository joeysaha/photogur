# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Picture.destroy_all

Picture.create(
  title:  'The old church on the coast of White sea',
  artist: 'Sergey Ershov',
  url:    'http://bitmakerlabs.s3.amazonaws.com/photogur/house.jpg'
  created_at: Time.new(2002, 9, 4)
  updated_at: Time.now - (60*60*24*365)
)

Picture.create(
  title:  'Sea Power',
  artist: 'Stephen Scullion',
  url:    'http://bitmakerlabs.s3.amazonaws.com/photogur/wave.jpg'
)

Picture.create(
  title:  'Into the Poppies',
  artist: 'John Wilhelm',
  url:    'http://bitmakerlabs.s3.amazonaws.com/photogur/girl.jpg'
)
