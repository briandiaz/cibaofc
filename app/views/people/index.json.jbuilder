json.array!(@people) do |person|
  json.extract! person, :id, :first_name, :middle_name, :last_name, :sur_name, :sex, :identification_number, :birthdate, :phone, :mobile, :additional_phone, :email, :salary, :additional_information, :photo, :city_id
  json.url person_url(person, format: :json)
end
