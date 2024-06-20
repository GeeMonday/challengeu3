require_relative 'ar.rb'

# Total number of products
number_of_products = Product.count
puts "There are #{number_of_products} products in the products table."

# Names of all products above $10 with names that begin with the letter C
products_above_10_with_C = Product.where('price > ? AND name LIKE ?', 10, 'C%').pluck(:name)
puts "Products above $10 with names starting with 'C':"
products_above_10_with_C.each { |name| puts name }

# Total number of products with a low stock quantity (less than 5 in stock)
low_stock_products_count = Product.where('stock_quantity < ?', 5).count
puts "There are #{low_stock_products_count} products with a low stock quantity."
