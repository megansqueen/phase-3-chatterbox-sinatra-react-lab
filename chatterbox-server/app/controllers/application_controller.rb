class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  

  post '/messages' do
    messages = Message.create(
      body: params[:body],
      username: params[:username],
      created_at: [:created_at],
      updated_at: [:updated_at]
    )
    # body: string
    # username: string
    # created_at: timestamp
    # updated_at: timestamp
    messages.to_json
  end

  get '/messages' do
    messages = Message.allows
    messages.to_json
  end
  
end

