require 'json'
require 'mysql2'
require 'sinatra'

class App < Sinatra::Base

  get '/' do
    mysql = Mysql2::Client.new(
      host: 'mysql',
      username: 'app',
      password: 'app',
      database: 'app'
    )
    entries = mysql.query('SELECT * FROM `book`').entries

    JSON.generate(entries)
  end

end
