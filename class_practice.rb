class FacebookProfiles
  def initialize(name, age)
    @name= name
    @age= age
  puts "My name is #{name}, I am #{age} years old."

  end
  
  def bio= (bio)
    @bio = bio 
  end 
  
  def bio 
    @bio
  end 

  attr_accessor :job

end 

becca = FacebookProfiles.new("becca", "23")
becca.bio= "I like me"
becca.job= "Elephant"

puts "I am a #{becca.job} and i #{becca.bio}."