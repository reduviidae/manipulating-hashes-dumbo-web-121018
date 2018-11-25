require "pry"

def first_challenge
  contacts = {
    "Jon Snow" => {
      name: "Jon",
      email: "jon_snow@thewall.we", 
      favorite_icecream_flavors: ["chocolate", "vanilla", "mint chip"],
      knows: nil
    },
    "Freddy Mercury" => {
      name: "Freddy",
      email: "freddy@mercury.com",
      favorite_icecream_flavors: ["strawberry", "cookie dough", "mint chip"]
    }
  }

  #your code here
  contacts.each do |person, data|
    if person == "Freddy Mercury"
      data.each do |key, value|
        if key == :favorite_icecream_flavors
          value.delete_if { |v| v == "strawberry"}
          # binding.pry
        end
      end
    end
  end

  #remember to return your newly altered contacts hash!
  contacts
end