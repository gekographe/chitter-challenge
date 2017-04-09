require 'sinatra/base'
require_relative 'data_mapper_setup'



class Chitter < Sinatra::Base


  get '/sign_up' do
    @user = User.new
    erb :'sign/sign_up'
  end

  post '/users' do
    @user = User.create(email: params[:email],
                        password: params[:password],
                        password_confirmation: params[:password_confirmation])

    @user.save!

    redirect to('/chitter/new')
  end

  get '/chitter/home' do
    erb :'chitter/home'
  end

  get '/chitter/new' do
    erb :'chitter/new'
  end

  get '/session/new' do
    erb :'session/new'
  end

  post '/session' do
    user = User.authenticate(params[:email], params[:password])
    if user
      session[:user_id] = user.id
      redirect to('/chitter/home')
    else
      erb :'session/new'
    end
  end



end
