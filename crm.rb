require_relative 'contact'

class CRM

  def initialize
  end

  def main_menu
    while true
        print_main_menu
        user_input = gets.to_i
        call_option(user_selected)
    end
  end

  def print_main_menu
    puts '[1] Add a new contact'
    puts '[2] Modify an existing contact'
    puts '[3] Delete a contact'
    puts '[4] Display all the contacts'
    puts '[5] Search by attribute'
    puts '[6] Exit'
    puts 'Enter a number:'
  end

  def call_option
    case user_selected
   when 1 then add_new_contact
   when 2 then modify_existing_contact
   when 3 then delete_contact
   when 4 then display_all_contacts
   when 5 then search_by_attribute
   when 6 then exit
   end
  end

  def add_new_contact
    puts "Please enter the first name"
  first_name = gets.chomp
    puts "Please enter last name"
  last_name = gets.chomp
    puts "please enter email"
  email = gets.chomp
    puts "please enter notes"
  notes = gets.chomp
  Contact.create(first_name, last_name, email, notes)

end

def modify_existing_contact
    puts "which ID would you like to change"
  id = gets.to_i
  contact_being_modified = Contact.find(id)
    puts "which attribute do you want to change? first_name, last_name, email, notes"
  attribute = gets.chomp
    puts "what would you like to change the #{attribute} to?"
  new_value = gets.chomp

  contact_being_modified.update(attribute, new_value)

end

def delete_contact
    puts "Please enter the ID of the user you wish to delte"
  user_delete = gets.chomp.to_i
  fetched_user = Contact.find(user_delete)
  fetched_user.delete

end

def display_all_contacts
  p Contact.all.inspect
end

def search_by_attribute
    puts "Which attribute are you searching with? first_name, last_name, email, notes"
  attribute = gets.chomp
    puts "Please enter the #{attribute} value"
  searched_value = gets.chomp
  found_value = Contact.find_by(attribute, searched_value)
    p found_value.inspect
end

end

crm = CRM.new

crm.main_menu
