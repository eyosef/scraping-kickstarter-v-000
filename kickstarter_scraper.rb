# require libraries/modules here
require 'pry'
require 'nokogiri'

html = File.read('fixtures/kickstarter.html')
kickstarter = Nokogiri::HTML(html)

def create_project_hash
end
#projects: kickstarter.css("li.project.grid_4")
#title: project.css("h2.bbcard_name strong a").text
#image link: project.css("div.project-thumbnail a img").attribute("src").value

create_project_hash

binding.pry
