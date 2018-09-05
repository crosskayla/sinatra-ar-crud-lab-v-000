
require_relative '../../config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/' do

  end

  get '/posts' do
    @posts = Post.all
    erb :index
  end

  post '/posts' do
    @post = Post.create(params)
    redirect '/posts'
  end

  get '/posts/new' do
    erb :new
  end

end
