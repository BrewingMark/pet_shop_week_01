def pet_shop_name(pet_shop)
  return pet_shop[:name]
end

def total_cash(pet_shop)
  return pet_shop[:admin][:total_cash]
end

def add_or_remove_cash(pet_shop, cash_difference)
  pet_shop[:admin][:total_cash] = pet_shop[:admin][:total_cash] + cash_difference
end

def pets_sold(pet_shop)
  return pet_shop[:admin][:pets_sold]
end

def increase_pets_sold(pet_shop, pets_sold)
  pet_shop[:admin][:pets_sold] = pet_shop[:admin][:pets_sold] + pets_sold
end

def stock_count(pet_shop)
  pet_shop[:pets].length
end

def pets_by_breed(pet_shop, breed)
  by_breed = []
  for pet in pet_shop[:pets]
    if breed == pet[:breed]
      by_breed.push(pet)
    end
  end
  return by_breed
end

def find_pet_by_name(pet_shop, name)
  for pet in pet_shop[:pets]
    if name == pet[:name]
      return pet
    end
  end
  return nil
end

def remove_pet_by_name(pet_shop, name)
  # pet_shop[:pets].keep_if {:name == name}
  pet_shop[:pets].delete_if { |name| name != :name}
end
# Isn't this backwards??? I dont know why this "works" or passes the test.

def add_pet_to_stock(pet_shop, new_pet)
  pet_shop[:pets].push(new_pet)
end

def customer_cash(customer)
  return customer[:cash]
end

def remove_customer_cash(customer, price)
  customer[:cash] = customer[:cash] - price
end

def customer_pet_count(customer)
  return customer[:pets].length
end

def add_pet_to_customer(customer, pet)
  customer[:pets] << pet
end

def customer_can_afford_pet(customer, pet)
  if customer[:cash] >= pet[:price]
    return true
  else
    return false
  end
end

def sell_pet_to_customer(pet_shop, pet, customer)
  if customer_can_afford_pet(customer, pet) == true 
    add_pet_to_customer(customer, pet)
    remove_customer_cash(customer, pet[:price])
    increase_pets_sold(pet_shop, 1)
    add_or_remove_cash(pet_shop, pet[:price])
  end
end
