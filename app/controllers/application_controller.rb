class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'

  get '/' do
    "Hello world"
  end
  
  get '/mons' do
    mons = Mon.all.order(:id).reverse
    mons.to_json
  end

  get '/mons/:id' do
    mon = Mon.find(params[:id])
    mon.to_json
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
      move4: params[:move4],
    )
    mon.to_json
  end

  patch '/mons/:id' do
    mon = Mon.find(params[:id])
    mon.update(
      nickname: params[:nickname],
      species: params[:species],
      ability: params[:ability],
      move1: params[:move1],
      move2: params[:move2],
      move3: params[:move3],
      move4: params[:move4],
    )
    mon.to_json
  end

  get '/trainers' do
    trainers = Trainer.all.order(:id).reverse
    trainers.to_json
  end

  get '/trainers/:id' do
    trainer = Trainer.find(params[:id])
    trainer.to_json
  end

  post '/trainers' do
    trainer = Trainer.create(
      name: params[:name],
      occupation: params[:occupation],
      mon1_id: params[:mon1_id],
      mon2_id: params[:mon2_id],
      mon3_id: params[:mon3_id],
      mon4_id: params[:mon4_id],
      mon5_id: params[:mon5_id],
      mon6_id: params[:mon6_id],
      league_id: params[:league_id]
    )
    trainer.to_json
  end

  patch '/trainers/patchmon1/:id' do
    trainer = Trainer.find(params[:id])
    trainer.update(
      mon1_id: params[:mon1_id],
    )
    trainer.to_json
  end

  patch '/trainers/patchmon2/:id' do
    trainer = Trainer.find(params[:id])
    trainer.update(
      mon2_id: params[:mon2_id],
    )
    trainer.to_json
  end

  patch '/trainers/patchmon3/:id' do
    trainer = Trainer.find(params[:id])
    trainer.update(
      mon3_id: params[:mon3_id],
    )
    trainer.to_json
  end

  patch '/trainers/patchmon4/:id' do
    trainer = Trainer.find(params[:id])
    trainer.update(
      mon4_id: params[:mon4_id],
    )
    trainer.to_json
  end

  patch '/trainers/patchmon5/:id' do
    trainer = Trainer.find(params[:id])
    trainer.update(
      mon5_id: params[:mon5_id],
    )
    trainer.to_json
  end

  patch '/trainers/patchmon6/:id' do
    trainer = Trainer.find(params[:id])
    trainer.update(
      mon6_id: params[:mon6_id],
    )
    trainer.to_json
  end

  get '/leagues' do
    leagues = League.all.order(:id).reverse
    leagues.to_json
  end

  post '/leagues' do
    league = League.create(
      name: params[:name],
      gym1_id: params[:gym1_id],
      gym2_id: params[:gym2_id],
      gym3_id: params[:gym3_id],
      gym4_id: params[:gym4_id],
      gym5_id: params[:gym5_id],
      gym6_id: params[:gym6_id],
      gym7_id: params[:gym7_id],
      gym8_id: params[:gym8_id],
      e41_id: params[:e41_id],
      e42_id: params[:e42_id],
      e43_id: params[:e43_id],
      e44_id: params[:e44_id],
      champion_id: params[:champion_id]
    )
    league.to_json
  end

  patch '/leagues/:id' do
    league = League.find(params[:id])
    league.update(
      gym1_id: params[:gym1_id],
      gym2_id: params[:gym2_id],
      gym3_id: params[:gym3_id],
      gym4_id: params[:gym4_id],
      gym5_id: params[:gym5_id],
      gym6_id: params[:gym6_id],
      gym7_id: params[:gym7_id],
      gym8_id: params[:gym8_id],
      e41_id: params[:e41_id],
      e42_id: params[:e42_id],
      e43_id: params[:e43_id],
      e44_id: params[:e44_id],
      champion_id: params[:champion_id]
    )
    league.to_json
  end

end
