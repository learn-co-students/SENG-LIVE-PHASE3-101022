class Organization < ActiveRecord::Base
   has_many :donations
   has_many :donors, through: :donations 

  def return_donations_by_date(date)
    self.donations.where(date:date)
  end 

  def sum_of_donations
    self.donations.sum(:amount)
  end 

  def print_donors_by_name
    donors.pluck(:name)
  end 
end 
# amount = 500
# self.donations.where("amount = ?", amount)