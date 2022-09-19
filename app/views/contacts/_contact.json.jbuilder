json.extract! contact, :id, :email, :cellphone, :user_id, :created_at, :updated_at
json.url contact_url(contact, format: :json)
