require 'sinatra'

class DiaryApp < Sinatra::Base

  get '/' do 
   erb :index

   


   
  end
end