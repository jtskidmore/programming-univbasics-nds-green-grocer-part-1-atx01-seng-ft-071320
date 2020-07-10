def find_item_by_name_in_collection(item, collection)
  collection.each do |element|
    if element[:item] == item 
     return element
    end
  end
  nil
end


def consolidate_cart(cart)
  
  
  new_cart = []
  
  cart.each do |hash|
    if new_cart.include?(hash)
      new_cart[new_cart.index(hash)][:count] += 1
    else
      new_cart << hash
    end
  end
  
end