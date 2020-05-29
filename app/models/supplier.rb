class Supplier < ApplicationRecord

  has_many :suppliers_products
  has_many :products, through: :suppliers_products
end
