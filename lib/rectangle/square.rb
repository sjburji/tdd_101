module Rectangle
	class Square
		def self.build_square(side)
			return {:error => "invalid arguements"} if (side <= 0)
			new(side, side)
		end

		def initialize(length, breadth)
			@length = length
			@breadth = breadth
		end

		def area
			@length * @breadth
		end
	end
end