class Product < ApplicationRecord

  has_many :suppliers_products
  has_many :suppliers, through: :suppliers_products
end
