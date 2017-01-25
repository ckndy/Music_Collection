require('pg')
require_relative('../db/SqlRunner')

class Artist

  attr_reader :name, :id

  def initialize (options)
    @name = options['name']
    @id = options['id'].to_i
  end

  def save()
    sql = "INSERT INTO artist (name) VALUES ('#{@name}') RETURNING *;"
    result = SqlRunner.run(sql)
    @id = result.first['id'].to_i
    return "artist saved"
  end 

def update()
  sql = "UPDATE artists SET (name) = ('#{@name} WHERE id = #{id}"
  SqlRunner.run(sql)
end

def albums()
  sql = "SELECT * FROM albums WHERE artist_id = #{@id};"
  albums = SqlRunner.run(sql)
  result = albums.map { |album| Album.new(album)}
  return result
end

def self.all()
  sql = "SELECT * FROM artists;"
  artists = SqlRunner.run(sql)
  all_artists = artists.map { |artist| Artist.new(artist)}
  return all_artists
end

def self.delete_all()
  sql = "DELETE FROM artists;"
  SqlRunner.run(sql)
  return "artist deleted"
end
end