require 'erb'
require 'csv'

class CurriculumMaker
	attr_reader :course_date, :template

	def initialize
		@course_data = []
		@template = 'template missing'
	end

	def add_course_data(filepath)
		courses = CSV.read(filepath)
		header = courses.shift
		@course_data << {:header => header, :couses => courses}
	end

	def render
		ERB.new(@template).result(binding)
	end
end