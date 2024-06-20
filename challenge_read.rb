require_relative 'ar.rb'

# Retrieve any product from the database
product = Product.first

# Print out the attributes of the product
puts product.attributes
