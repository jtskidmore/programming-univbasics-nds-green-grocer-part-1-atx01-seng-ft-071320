def find_item_by_name_in_collection(item, collection)
  collection.each do |element|
    if element[:item] == item 
     return element
    end
  end
  nil
end


def consolidate_cart(cart)
  
  new_cart = cart
  
  new_cart.each do |element|
    item_name = element[:item]
    item_hash = find_item_by_name_in_collection(item_name, cart)
  end
  
end