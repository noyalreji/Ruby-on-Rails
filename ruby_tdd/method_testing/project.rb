class Project
	attr_accessor :name, :elevator_pitch, :description
	attr_reader :owner, :tasks

	def elevator_pitch
		return @name + ', ' + @description
	end
end