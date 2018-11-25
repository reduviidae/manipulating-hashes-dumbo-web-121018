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
          value.delete_if { |k, v| v == "strawberry"}
      end
    end
  end

  #remember to return your newly altered contacts hash!
  contacts
end

# delete_if syntax for reference
# h = { "a" => 100, "b" => 200, "c" => 300 }
# h.delete_if {|key, value| key >= "b" }   #=> {"a"=>100}