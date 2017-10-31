json.extract! product, :id, :supplier_id, :purchase_price, :status, :cant, :sell_price_id, :category_id, :created_at, :updated_at
json.url product_url(product, format: :json)
