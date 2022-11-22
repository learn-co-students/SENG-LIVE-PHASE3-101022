require_relative "./helper_methods.rb"

class Donor < HelperMethods

  attr_accessor :name

end

Donor.new(name: "Nikan")