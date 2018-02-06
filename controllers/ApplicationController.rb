class ApplicationController < Sinatra::Base

  require 'bundler'
  Bundler.require()

  set :views, File.expand_path('../views', File.dirname(__FILE__))

  ActiveRecord::Base.establish_connection(
      :adapter => 'postgresql',
      :database => 'cat'
  )

  get '/' do
    erb :home
  end

  # Create Route
  post '/' do
    @cat = Cat.new
    @cat.name = params[:name]
    @cat.breed = params[:breed]
    @cat.color = params[:color]
    @cat.save
    resp = {
        status: {
            created: true
        },
        cat: @cat
    }
    resp.to_json
  end

  # Show Route
  get '/:id' do
    @cat = Cat.find params[:id]
    resp = {
        status: {
            found: true,
            message: "Cat picked"
        },
        cat: @cat
    }
    resp.to_json
  end

  # Update/Edit Route
  patch '/:id' do
    @cat = Cat.find params[:id]
    @cat.name = params[:name]
    @cat.breed = params[:breed]
    @cat.color = params[:color]
    @cat.save

    resp = {
        status: {
            updated: true,
            message: "updated #{@cat.name}"
        },
        cat: @cat
    }
    resp.to_json
  end

  # Delete Route
  delete '/:id' do
    @cat = Cat.find params[:id]
    @cat.delete

    resp = {
        status: {
            deleted: true
        }
    }
    resp.to_json
  end

end