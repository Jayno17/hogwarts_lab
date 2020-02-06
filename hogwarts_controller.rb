require('sinatra')
require('sinatra/contrib/all')
require('pry-byebug')

require_relative('./models/student')
also_reload('./models/*')

get '/students' do
  @students = Student.all()
  erb(:index)
end


get '/students/new' do
  erb(:new)
end

get '/students/:id'do
  @students = Student.find(params[:id])
  erb(:show)
end

post '/students' do
  @students = Student.new(params)
  @students .save()
  redirect "/students"
end
