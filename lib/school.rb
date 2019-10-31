class School
	attr_accessor :name
	attr_reader :roster

	def initialize(name)
		@name = name
		@roster = {}
	end

	def add_student(student, grade)
		#adds a new grade object to @roster if the grade does not already exist
		@roster[grade] = [] if !@roster[grade]
		#push student into specified grade array
		@roster[grade] << student
	end

	def grade(lookup_grade)
		@roster[lookup_grade]
	end

	def sort
		#sort the hash by grade
		sorted = Hash[@roster.sort]
		#sort the hash by student
		sorted.each { |grade, students| students.sort! }
	end

end