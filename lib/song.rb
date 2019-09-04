class Song
  attr_accessor :title, :album

  def initialize(title, album, id = nil)
    @id = id
    @title =  title
    @album = album
  end

  def self.create_table
    sql = <<-SQL
      CREATE TABLE IF NOT EXISTS songs (
        id INTEGER PRIMARY KEY,
        title TEXT,
        album TEXT
      )
      SQL
    DB[:conn].execute(sql)
  end

  def save
    sql = <<-SQL
      INSERT INTO songs (title, album)
      VALUES (?, ?)
    SQL
    binding.pry
    DB[:conn].execute(sql, self.title, self.album)
  end
end
