require 'pry'

# Define a Person class
class Person
  # class variable
  @@all_people = []
  @@count = 0

  # class method, NOTICE the 'self'
  def self.all_people
    @@all_people
  end

  def self.count
    @@count
  end

  def self.count=(new_count)
    @@count = new_count
  end

  binding.pry

  attr_reader :first_name, :status
  attr_accessor :last_name

  def initialize(fname, lname)
    @first_name, @last_name = fname, lname
    @status = 'inactive'

    # @@all_people << self
    Person.count += 1
  end

  def full_name
    "#{@first_name} #{@last_name}"
  end

  def status=(new_status)
    @status = new_status

    # Side Effect of changing a Person's status is to say it
    %x{ echo "#{full_name} has changed their status to #{status}"}
  end

  def signed_contract
    # Problem:
    # Will not call the setter method to and notify, or say, that the status has
    # changed!
    # @status = 'active'

    # Problem:
    # This will create a variable, status, that is ONLY local to this method!
    # status = 'active'

    # OK, we are going to refer to this object, using self, and call the status method.
    # This will notify, or say, that theh Person's status has changed.
    self.status = 'active'
  end
end
