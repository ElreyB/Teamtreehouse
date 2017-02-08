def save_content(title, content)
	File.open("pages/#{title}.txt", "w") do |file|
		file.print(content)
	end
end

save_content("Nick Pettit", "Treehouse teacher and awesome guy.")