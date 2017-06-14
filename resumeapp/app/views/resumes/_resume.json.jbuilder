json.extract! resume, :id, :name, :email, :phone, :city, :state, :zip, :summary, :created_at, :updated_at
json.url resume_url(resume, format: :json)
