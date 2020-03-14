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

# def find_pet_by_name(pet_shop, name)
#   for pet in pet_shop
#     if :name == name
#       return pet
#     end
#   end
#   return nil
# end
