require('pg')
require_relative('Artist')
require_relative('Album')

artist_1 = Artist.new({'name' => "Drake"})
artist_2 = Artist.new({'name' => "Frank Ocean"})
artist_3 = Artist.new({'name' => "Kanye West"})
artist_4 = Artist.new({'name' => "The Weeknd"})

artist_1.save()
artist_2.save()
artist_3.save()
artist_4.save()

album_1 = Album.new({'title' => 'Views', 'genre' => 'Rap', 'artist_id' => artist_1.id})
album_2 = Album.new({'title' => 'Blonde', 'genre' => 'R&B', 'artist_id' => artist_2.id})
album_3 = Album.new({'title' => 'Life of Pablo', 'genre' => 'Rap', 'artist_id' => artist_3.id})
album_3 = Album.new({'title' => 'Starboy', 'genre' => 'R&B', 'artist_id' => artist_4.id})

album_1.save()
album_2.save()
album_3.save()
album_4.save()

binding.pry

nil