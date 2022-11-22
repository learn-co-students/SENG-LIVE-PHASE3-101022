# Agenda:
# - Discuss mass assignment 
# - Discuss class variables and class methods
# - Discuss inheritance

require 'pry' # we use require to import anything outside of our project
require_relative "./helper_methods.rb" # used for importing internal files or directories 

class Donation < HelperMethods

  # I want something that belongs to the class that will also store all instances created

  # class variable @@
  #  @@all = []
  
  attr_accessor :org, :amt, :date

  # def amt=(amt)
  #   @amt = amt 
  # end

  # def initialize(org, amt, date) 
  #   @org = org
  #   @amt = amt
  #   @date = date
  # end

  # class method belongs to class 
  # invoke it Donation.all
  # def self.all # self refers to the class
  #   @@all
  # end

  # # mass assignment
  # def initialize(attr = {})
  #   attr.each do |key, value|
  #     self.send("#{key}=", value) # self.org = "Feeding America"
  #   end

  #   @@all << self # self here is the instance we just created
  # end

  def print 
    puts "**************"
    puts self.amt
    puts self.org 
    puts self.date 
    puts "**************"
  end


  def self.find_org(org_name)
    @@all.select{|don| don.org == org_name }

    # .select will return an array of all the matches 
  end

  def self.find_organization organization
    self.all.find {|donation| donation.org == organization} # going to return the first match that returns true 
  end

end


donation_one = Donation.new(org: "Feeding America", amt: 100, date: 112122, donor: "Aysan")
donation_two = Donation.new(org: "Wounded Warrior", amt: 300, date: 112122)
donation_three = Donation.new(org: "Wounded Warrior", amt: 500, date: 112422)
donation_four = Donation.new(org: "Feeding America", amt: 50, date: 112422)

# donation_one = Donation.def new
# donation_one.amount = 100

binding.pry