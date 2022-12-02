class Donation < ActiveRecord::Base
   belongs_to :organization
   belongs_to :donor

   def return_org_by_name
    self.organization.name
   end 
end 
  
  