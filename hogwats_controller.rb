require ('pg')
require( 'sinatra' )
require( 'sinatra/contrib/all' )
require( 'pry-byebug' )
require_relative('./models/student')
require_relative('db/sql_runner')


get  '/students' do
  @students = Student.all()
  erb(:index)
end

post '/students' do
  @student = Student.new(params)
  @student.save()
  erb(:create)
end

get '/students/new' do
  erb(:new)
end