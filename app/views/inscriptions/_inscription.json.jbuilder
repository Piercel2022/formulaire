json.extract! inscription, :id, :club_name, :age, :vorname, :name, :adress, :email, :phone, :gender, :created_at,
              :updated_at
json.url inscription_url(inscription, format: :json)
