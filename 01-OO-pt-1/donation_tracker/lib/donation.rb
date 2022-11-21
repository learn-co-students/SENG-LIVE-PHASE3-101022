require 'pry'

class Donation
  binding.pry
  self.new

  # self is only ever going to refer to class or the instance

  # a macro which is a method that generates instead methods 
  # attr_reader :amount, :organization, :date # a reader/getter method for whats passed in
  # attr_writer :amount, :organization, :date # generate teh writer methods for whats passed in

  attr_accessor :amount, :organization, :date # gives us both reader/writer methods for the properties we pass in

  # instance method: its a behavior that is meant to be called on the instance 
  def initialize(amt, date, org) # we can set a number of rules that happen as soon as .new is invoked
    @amount = amt # instance variable 
    @date = date 
    @organization = org

    # self.amount = amt 
  end

  def print # instance method 
    # is the instance that print was called on
    # self is always going to refer to the receiver of the method 
    # puts self.amount 
    # puts self.date
    # puts self.organization

    puts @amount 
    puts @date 
    puts @organization
  end

  # getter method/ reader method: its goal is to read the value of a property
  
  # def amount 
  #   @amount 
  # end

  # def organization
  #   @organization 
  # end

  # def date 
  #   @date
  # end

  # setter method/ writer method: its goal is to set a new value for a property 

  # def amount=(amount)
  #   @amount = amount
  # end

end





# instantiate a new instance of the donation class => .new


# local variables = defined inside of a local scope, not global 
# instance variables = they are attached to the instance that it was defined 


feeding_america = Donation.new(100, 112122, "Feeding America")
ww = Donation.new(500, 112122, "Wounded Warrior")
binding.pry
donation.print
# donation.initialize # we dont need to invoke initialize

# instance is what we create when we call .new on the class 
# instance method is a method we have written that is meant to be called on the instance we created
# instance variable is a variable with the @ and its a variable typically used for attributes of an instance 



