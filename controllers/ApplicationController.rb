class ApplicationController < Sinatra::Base

  require 'bundler'
  Bundler.require()

  set :views, File.expand_path('../views', File.dirname(__FILE__))

  ActiveRecord::Base.establish_connection(
      :adapter => 'postgresql',
      :database => 'cat'
  )

  get '/' do
    resp = {
        status: {
            message: "No views - Home route.Please consult the API documentation"
        }
    }
    resp.to_json
  end

end