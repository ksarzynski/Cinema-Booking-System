json.extract! customer, :id, :firstname, :secondname, :email
json.url customer_url(customer, format: :json)
