require 'sinatra'
# Saves and append the signature to text file
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

# Updates the line at the given index and re-saves the file.
def update_signature(index, signature)
  lines = File.readlines("signatures.txt")
  index = index.to_i
  lines[index] = signature
  File.open("signatures.txt", "w") do |file|
    file.puts lines
  end
end

# Deletes the line at the given index and re-saves the file.
def delete_signature(index)
  lines = File.readlines("signatures.txt")
  index = index.to_i
  lines.delete_at(index)
  File.open("signatures.txt", "w") do |file|
    file.puts lines
  end
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

put "/signatures/:index" do
	update_signature(params[:index], params[:signature])
	redirect "/signatures/new"
end

delete "/signatures/:index" do
	delete_signature(params[:index])
	redirect "/signatures/new"
end
