require 'bundler/setup'
Bundler.require :default
Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file }

before do
  cache_control :public, :must_revalidate, :max_age => 60
end

get '/' do 
  erb :index
end

get '/*' do 
	redirect '/'
end

