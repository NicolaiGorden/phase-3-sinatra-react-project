class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'

  get '/' do
    "Hello world"
  end
  
  get '/mons' do
    mons = Mon.all.order(:id).reverse
    mons.to_json
  end
  
  delete '/mons/:id' do
    mon = Mon.find(params[:id])
    mon.destroy
    mon.to_json
  end
  
  post '/mons' do
    mon = Mon.create(
      nickname: params[:nickname],
      species: params[:species],
      ability: params[:ability],
      move1: params[:move1],
      move2: params[:move2],
      move3: params[:move3],
      move4: params[:move4]
    )
    mon.to_json
  end

end
