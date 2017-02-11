require 'sinatra'

def save_signature(signature)
  File.open("pages/signatures.txt", "a") do |file|
    file.puts signature
  end
end

def save_content(title, content)
	File.open("pages/#{title}.txt", "w") do |file|
		file.print(content)
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


