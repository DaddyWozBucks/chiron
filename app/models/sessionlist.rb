class Sessionlist < ActiveRecord::Base
	belongs_to :workouts_template
	belongs_to :templates


	def self.exlist
		exlist = []		
		l = Template.all
		l.each do |ex|
			exlist << ex	
		end
		exlist
	end
end
