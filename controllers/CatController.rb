class CatController < ApplicationController
  

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

# Show Route -> when used in postman check http://localhost:9292/cat/1 *use ex
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

# Update/Edit Route -> when used in postman check http://localhost:9292/cat/ & fill out keys and values for id,name,color,breed
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

# Delete Route -> when used in postman check http://localhost:9292/cat/1
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