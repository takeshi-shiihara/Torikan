class Supplier < ApplicationRecord

  has_many :supplier_products, dependent: :destroy
  has_many :products, through: :supplier_products
end
