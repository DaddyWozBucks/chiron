class Template < ActiveRecord::Base
	has_many :exercises
	belongs_to :workouts_template
	has_many :sessionlists
	
	def self.exlist
		exlist = []

		l = Template.all
		l.each do |ex|
			exlist << ex	
		end
		exlist
	end
end
