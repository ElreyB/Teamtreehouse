require "sinatra"

get ("/apple") do 
	"<h1>Here's a juicy apple!</h1>"
end

get ("/banana") do 
	"<h1>Here's a ripe banana!</h1> \n
	Bananas are awesome. If you have a crap in your leg it gets rid of it right away.
	It is pretty amazing how this all works. I am hoping to learn enough that I will 
	not be at a disadvantage when I go on campus."
end

get ("/carrot") do
	"<h1>Here's a heathly carrot!<h1>"
end