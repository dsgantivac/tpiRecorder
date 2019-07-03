json.extract! user, :id, :name, :lastname, :email, :age, :sex, :weight, :waist_perimeter, :float, :height, :systole, :diastole, :heart_rate, :spo2, :created_at, :updated_at
json.url user_url(user, format: :json)
