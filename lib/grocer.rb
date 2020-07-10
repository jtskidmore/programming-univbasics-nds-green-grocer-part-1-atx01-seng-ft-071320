def find_item_by_name_in_collection(item, collection)
  collection.each do |element|
    if element[:item] == item 
     return element
    end
  end
  nil
end


def consolidate_cart(cart)
  
  cart.each do |element|
    cart[cart.index(element)][:count] = 1
  end
  
end