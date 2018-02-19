# require libraries/modules here
require 'pry'
require 'nokogiri'

html = File.read('fixtures/kickstarter.html')

kickstarter = Nokogiri::HTML(html)

def create_project_hash
end
#projects: kickstarter.css("li.project.grid_4")
create_project_hash

binding.pry
