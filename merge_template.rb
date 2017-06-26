require_relative('curriculum_maker')

this_dir = File.dirname(__FILE__)
site_dir = File.join(this_dir,'site')
assets_dir = File.join(site_dir,'_assets')
target_dir = File.join(site_dir,'programs')

# define data and template files

semester_files = ['first_semester.csv','second_semester.csv']
template_file = 'graphic-design.html.erb'
target_file = 'graphic-design.htm'
cm = CurriculumMaker.new

# add the template
template_path = File.join(assets_dir, template_file)
cm.add_template(template_path)

#add the course data
semester_files.each do |semester_file|
	semester_path = File.join(assets_dir,semester_file)
	cm.add_course_data(semester_path)
end
content = cm.render

output_path = File.join(target_dir, target_file)
File.open(output_path, 'w+') do |f|
	f.write(content)
end

#puts content
