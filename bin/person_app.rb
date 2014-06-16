require 'pry'

require_relative '../lib/person'

joe = Person.new('Joe', 'Smoe')

# # change joe's status to active
# joe.status = 'active'

# # change  joe's status to inactive
# joe.status = 'inactive'

# # Ok, joe is signed the contract and we make him active again.
# joe.signed_contract


# joe.all_people

4.times { |i| Person.all_people << Person.new("person_first_#{i}", "person_last")}

puts "All my people = #{Person.all_people}"
# binding.pry
