require_relative('curriculum_maker')

this_dir = File.dirname(__FILE__)
site_dir = File.join(this_dir,'site')
assets_dir = File.join(site_dir,'_assets')
target_dir = File.join(site_dir,'programs')
cm = CurriculumMaker.new

content = cm.render
puts content
