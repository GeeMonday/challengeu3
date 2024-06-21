require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  test "should not save product without required attributes" do
    product = Product.new
    assert_not product.save, "Saved the product without required attributes"
  end

  test "should save product with all required attributes" do
    product = Product.new(
      name: "Test Product",
      description: "Test description.",
      price: 10.99,
      stock_quantity: 5,
      category_id: 1
    )
    assert product.save, "Failed to save the product with all required attributes"
  end

  test "should not save product with a non-unique name" do
    existing_product = products(:one) # Assuming you have fixture data or use FactoryBot
    product = Product.new(
      name: existing_product.name,
      description: "Another product with the same name.",
      price: 20.99,
      stock_quantity: 3,
      category_id: 2
    )
    assert_not product.save, "Saved the product with a non-unique name"
  end

  test "should not save product with a name shorter than 3 characters" do
    product = Product.new(
      name: "A", # Shorter than 3 characters
      description: "Short name product.",
      price: 15.99,
      stock_quantity: 8,
      category_id: 3
    )
    assert_not product.save, "Saved the product with a name shorter than 3 characters"
  end
end
