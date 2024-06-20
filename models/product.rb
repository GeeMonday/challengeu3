class Product < ActiveRecord::Base
  # This AR object is linked with the products table.

  # Columns in the products table:
  # id, name, description, price, stock_quantity, category_id, created_at, updated_at

  # A product has a many to one relationship with a category.
  # The products table has a category_id foreign key.
  # In other words, a product belongs to a category.
  belongs_to :category

  # Validations
  validates :name, presence: true, uniqueness: true, length: { minimum: 4 }
  validates :description, presence: true
  validates :price, presence: true, numericality: { greater_than: 0 }
  validates :stock_quantity, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :category_id, presence: true
  # These lines ensure that name, description, price, stock_quantity, and category_id
  # are present when creating or updating a product. The price must be a number greater than 0,
  # and stock_quantity must be an integer greater than or equal to 0.
end
