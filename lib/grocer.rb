def find_item_by_name_in_collection(item, collection)
  collection.each do |element|
    if element[:item] == item 
     element
    end
  end
  nil
end

def consolidate_cart(cart)
  
  counter = 0
  cart.each do |hash|
    cart[counter][:count] << 1
    counter += 1
  end
  
  counter_hash = Hash.new(0)
  
  cart.each do |v|
    counter_hash[v] += 1
  end

  new_cart = []

  counter_hash.each do |key, value|
    new_cart << key
    new_cart[new_cart.index(key)][:count] = value
  end
  

  
 cart = new_cart
 cart

end