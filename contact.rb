class Contact

@@contacts =[]
@@id = 1

  # This method should initialize the contact's attributes
  def initialize
    @first_name = first_name
    @last_name = last_name
    @email = email
    @notes = notes
    @id = @@id
    @@id += 1
  end

  # This method should call the initializer,
  # store the newly created contact, and then return it
  def self.create(first_name, last_name, email, notes)
    puts first_name
    new_contact = Contact.new(first_name, last_name, email, notes)
    @@contacts << new_contact
    return new_contact
  end

  def self.all
    @@contacts
  end

  def first_name
      @first_name
  end

    def first_name=(first_name)
      @first_name = first_name
    end

    def last_name=(last_name)
      @last_name = last_name
    end

    def email
      @email
    end

    def notes
      @notes
    end

    def id
      @id
    end

  # This method should return all of the existing contacts
  # This method should accept an id as an argument
  # and return the contact who has that id
  def self.find
    @@contacts.each do |contact|
      if contact.id == id
        return contact
      end
    end
  end

  # This method should allow you to specify
  # 1. which of the contact's attributes you want to update
  # 2. the new value for that attribute
  # and then make the appropriate change to the contact
  def update(attribute, new_value)
    if attribute == "first_name"
        self.first_name = new_value
      elsif attribute == "last_name"
        self.last_name = new_value
      elsif attribute == "email"
        self.email = new_value
      elsif attribute == "notes"
        self.notes = new_value
    end
  end

  # This method should work similarly to the find method above
  # but it should allow you to search for a contact using attributes other than id
  # by specifying both the name of the attribute and the value
  # eg. searching for 'first_name', 'Betty' should return the first contact named Betty
  def self.find_by(attribute, serach_value)
    @@contacts.each do |contact|
      if attribute == "first_name" && contact.first_name == search_value
        return contact
      elsif attribute == "last_name" && contact.last_name == search_value
        return contact
      elsif attribute == "email" && contact.email == search_value
        return contact
      elsif attribute == "notes" && contact.notes == search_value
        return contact
      end
    end
  end

  # This method should delete all of the contacts
  def self.delete_all
  end

  def full_name
  end

  # This method should delete the contact
  # HINT: Check the Array class docs for built-in methods that might be useful here
  def delete
    @@contacts.each do |contact|
      if contact == self
        @@contacts.delete(contact)
        puts "You deleted #{contact}"
      end
    end
  end

end


cordell = Contact.new("cordell", "perry", "cordell.perry@gmail.com", '')
puts cordell.inspect
