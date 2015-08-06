require('sinatra')
require('sinatra/reloader')
require('./lib/allergies')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/allergies') do
  @allergies = params.fetch('score').to_i.allergies()
  erb(:allergies)
end
