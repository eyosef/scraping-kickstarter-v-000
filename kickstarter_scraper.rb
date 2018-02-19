# require libraries/modules here
require 'pry'
require 'nokogiri'

html = File.read('fixtures/kickstarter.html')
kickstarter = Nokogiri::HTML(html)

def create_project_hash
  projects = {}

  kickstarter.css("li.project.grid_4").each do |project|
    projects[project] = {}
  end 

end
# projects: kickstarter.css("li.project.grid_4")
# title: project.css("h2.bbcard_name strong a").text
# image link: project.css("div.project-thumbnail a img").attribute("src").value
# description: project.css("p.bbcard_blurb").text
# project location: project.css("ul.project-meta span.location-name").text
# percent funded: percent_funded: project.css("ul.project-stats li.first.funded strong").text.gsub("%","").to_i


create_project_hash

binding.pry
