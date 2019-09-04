require 'sqlite3'
require 'pry'
require_relative './lib/song.rb'

DB = {:conn => SQLite3::Database.new("db/music.db")}
# can now access DB[:conn] fom songs.rb
