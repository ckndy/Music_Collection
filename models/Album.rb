require('pg')
require_relative('../db/SqlRunner')

class Album

  attr_reader :title, :genre, :id, :artist_id

  def initialize(options)
    
    title = options['title']
    genre = options['genre']
    @id = options['id'].to_i
    @artist_id = options['artist_id'].to_i if options['artist_id']
    # @track_id = options['track_id'].to_i
  end

  def save()
    sql = "INSERT INTO albums(title, genre, artist_id) VALUES ('#{@title', '#{@genre', '#{@artist_id') RETURNING *;"
    result = SqlRunner.run(sql)
    @id = result.first['id'].to_i

  end

  # def artist()
  #   sql = "SELECT * FROM artist WHERE id = #{@artist_id};"
  #   result = SqlRunner.run(sql)

  def self.all()
      sql = "SELET * FROM albums;"
      result = SqlRunner.run(sql)
      all_albums = result.map{ |album| Album.new(album)}
      return all_albums
    end

  def self.delete_all()
      sql = "DELETE FROM albums;"
      SqlRunner.run(sql)
      return "Albums deleted"
    end
  end