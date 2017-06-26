require 'erb'
require 'csv'

class CurriculumMaker
	attr_reader :course_date, :template

	def initialize
		@course_data = []
		@template = 'template missing'
	end

	def render
		ERB.new(@template).result(binding)
	end
end