class Product < ApplicationRecord
  belongs_to :supplier
  belongs_to :sell_price
  belongs_to :category
end
