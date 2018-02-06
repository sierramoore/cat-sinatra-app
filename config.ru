require 'sinatra/base'
require 'sinatra/activerecord'

# controllers
require './controllers/ApplicationController'

# models
require './models/CatModel'

# routes
map ('/') {
  run ApplicationController
}
