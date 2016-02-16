json.array!(@people) do |person|
  json.extract! person, :id, :given, :family, :given_ph, :family_ph, :given_e, :family_e, :gender, :date_of_birth, :zip, :address, :address_ph, :phone, :email
  json.url person_url(person, format: :json)
end
