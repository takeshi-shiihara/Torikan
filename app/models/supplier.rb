class Supplier < ApplicationRecord

  has_many :suppliers_products, dependent: :destroy
  has_many :products, through: :suppliers_products
end
