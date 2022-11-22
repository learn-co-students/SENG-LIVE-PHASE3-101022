class HelperMethods

  @@all = []

  def self.all # self refers to the class
    @@all
  end

  def initialize(attr = {})
    attr.each do |key, value|
      self.send("#{key}=", value) # self.org = "Feeding America"
    end

    @@all << self # self here is the instance we just created
  end


  # .all => class method 
  # Donation#print => instance method


end


# I want to create a method for the Donation class 
# this method is going to take an argument of organization name and return the donation instance that matches that org name 
# should this be a class or instance method? why? 
# what ruby method could we use to find that instance ( we are looking to return ONLY 1 instance)