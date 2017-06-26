require_relative('curriculum_maker')

this_dir = File.dirname(__FILE__)
site_dir = File.join(this_dir,'site')
assets_dir = File.join(site_dir,'_assets')
target_dir = File.join(site_dir,'programs')

semester_files = ['first_semester.csv','second_semester.csv']

cm = CurriculumMaker.new

#add the course data
semester_files.each do |semester_file|
	semester_path = File.join(assets_dir,semester_file)
	cm.add_course_data(semester_path)
end
content = cm.render
puts content
