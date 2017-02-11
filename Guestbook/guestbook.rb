require 'sinatra'

def save_signature(signature)
  File.open("signatures.txt", "a") do |file|
    file.puts signature
  end
end

get "/" do 
	erb :welcome
end

get "/new" do
  erb :new
end

get "signatures/new" do
	
end

post "/signatures/create" do 
	save_signature(params["signature"])
	redirect "/signatures/new"
end


