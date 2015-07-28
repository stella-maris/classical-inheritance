require 'pry'

class Animal
	attr_reader :num_legs, :cell_type
	def initialize(num_legs, cell_type)
	@num_legs = num_legs
	@cell_type = cell_type
	end

def num_legs
	@num_legs
end

class Mammal < Animal
	attr_reader :has_hair, :warm_blooded, :mammary_glands

	def initialize(num_legs, cell_type, has_hair, warm_blooded, mammary_glands)
		super(num_legs, cell_type)
		@has_hair = has_hair
		@warm_blooded = warm_blooded
		@mammary_glands = mammary_glands
	end
end

# mary = Mammal.new(2, eukaryotic, 'black', 'warm', true)
# puts mary.inspect

class Primate < Mammal
	attr_reader :num_legs, :large_brain, :fingers

	def initialize(num_legs, cell_type, has_hair, warm_blooded, mammary_glands, large_brain, fingers)
		super(num_legs, cell_type, has_hair, warm_blooded, mammary_glands)
		@num_legs = 2
		@large_brain = large_brain
		@fingers = fingers
	end
end

# class Bat < Mammal
# end

class Chimpanzee <Primate
	attr_reader :opposable_thumbs, :use_tools
	
	def initialize(num_legs, cell_type, has_hair, warm_blooded, mammary_glands, large_brain, fingers,opposable_thumbs, use_tools)
		super(num_legs, cell_type, has_hair, warm_blooded, mammary_glands, large_brain, fingers)
		@opposable_thumbs = opposable_thumbs
		@use_tools = use_tools
	end
end

	timo = Chimpanzee.new(2, 'eukaryotic', true, true, true, true, 10, 2, true)
	puts timo.inspect
	
end

class Amphibian < Animal
	attr_reader :lay_eggs, :metaphorsize

	def initialize(num_legs, cell_type, lay_eggs, metaphorsize)
		super(num_legs, cell_type)
		@lay_eggs = lay_eggs
		@metaphorsize = metaphorsize
	end
end

tree_frog = Amphibian.new(4, 'eukaryotic', true, true)
puts tree_frog.inspect

class Frog < Amphibian
	@legs = 4
	@no_teeth
end
module Flight
	attr_accessor :airspeed_velocity

	def fly
		@airspeed_velocity = rand(4) + 2
		puts "I'm a #{self.class} flying at #{@airspeed_velocity} km/hr"
	end
end


 #puts Flight::fly 


class Parrot < Animal
	include Flight
	attr_reader :feathers, :wings_that_fly
	
		def initialize(num_legs, cell_type, feathers, wings_that_fly)
		super(num_legs, cell_type)
		@feathers = feathers
		@wings_that_fly = wings_that_fly
		end
	end

iago=Parrot.new(2,'eukaryotic', 'plume', 2)
#iago.fly


# puts iago.inspect
 end

