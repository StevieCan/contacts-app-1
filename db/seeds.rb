

# 100.times do 
#   first_name = Faker::Name.first_name
#   last_name = Faker::Name.last_name

#   Contact.create(
#                 first_name: first_name,
#                 last_name: last_name,
#                 email: Faker::Internet.free_email("#{first_name}.#{last_name}"),
#                 phone_number: Faker::PhoneNumber.phone_number,
#                 user_id: 1
#                 )


# Group.create(name: "family")
# Group.create(name: "friends")
# Group.create(name: "douches")

ContactGroup.destroy_all

group_ids = Group.pluck(:id)

Contact.all.each do |contact|
  group_ids.sample(rand(2..4).each do |group_id_number|
    ContactGroup.create(group_id: group_id_number, contact_id: contact.id)
  end
end

#another way to do this is by adding the group_ids in rails c
#group_ids.sample(rand(2..4))
#Contact.all.each {|contact| group_ids.sample(rand(2..4)).each {|group_id| ContactGroup.create(contact_id: contact.id, group_id: group_id) }}










