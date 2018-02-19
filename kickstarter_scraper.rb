# require libraries/modules here
require 'pry'
require 'nokogiri'

def create_project_hash
  html = File.read('fixtures/kickstarter.html')

  kickstarter = Nokogiri::HTML(html)
end
#projects: kickstarter.css("li.project.grid_4")
create_project_hash

binding.pry
