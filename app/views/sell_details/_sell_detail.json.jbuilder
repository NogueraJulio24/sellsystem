json.extract! sell_detail, :id, :product_id, :sell_id, :cant, :created_at, :updated_at
json.url sell_detail_url(sell_detail, format: :json)
