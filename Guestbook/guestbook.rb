require 'sinatra'

def save_signature(signature)
  File.open("signatures.txt", "a") do |file|
    file.puts signature
  end
end

# Loads the signature at the given line index.
def load_signature(index)
  lines = File.readlines("signatures.txt")
  # Parameter is a string; convert to integer
  index = index.to_i
  lines[index]
end

get "/" do 
	erb :welcome
end

get "/signatures/new" do
  erb :new
end

get "/:index/edit" do 
	@index = params[:index]
	@signature = load_signature(@index)
	erb :edit
end

post "/signatures/create" do 
	save_signature(params[:signature])
	redirect "/signatures/new"
end


