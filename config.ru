require 'sinatra/base'
require 'sinatra/activerecord'

# controllers
require './controllers/ApplicationController'
require './controllers/CatController'

# models
require './models/CatModel'

# routes
map ('/') {
  run ApplicationController
}
map ('/cat') {
  run CatController
}
