feeding_america = Organization.create(name: 'Feeding America')
salvation_army = Organization.create(name: 'Salvation Army')
red_cross = Organization.create(name: 'American National Red Cross')

aysan = Donor.create(name:'Aysan')
cookie = Donor.create(name:'Cookie')
ix = Donor.create(name:'ix')
rose = Donor.create(name:'Rose')

Donation.create(amount:100, date:'10/12/22', completed:false, organization_id:feeding_america.id, donor_id: aysan.id)
Donation.create(amount:300, date:'11/13/22', completed:false, organization_id:feeding_america.id, donor_id: cookie.id)
Donation.create(amount:1000, date:'09/03/22', completed:false, organization_id:red_cross.id, donor_id: aysan.id)
Donation.create(amount:10, date:'12/03/22', completed:false, organization_id:red_cross.id, donor_id: rose.id)

puts 'done'