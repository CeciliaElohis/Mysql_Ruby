json.extract! user, :id, :programador, :birthday, :work_time, :name, :password, :email, :created_at, :updated_at
json.url user_url(user, format: :json)
