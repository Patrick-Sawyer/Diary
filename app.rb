require 'sinatra'

class DiaryApp < Sinatra::Base

  get '/' do 
    index.erb
  end
end