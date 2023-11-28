json.extract! qrcode, :id, :name, :facts, :created_at, :updated_at
json.url qrcode_url(qrcode, format: :json)
