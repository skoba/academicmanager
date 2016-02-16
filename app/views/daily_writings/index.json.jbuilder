json.array!(@daily_writings) do |daily_writing|
  json.extract! daily_writing, :id, :person_id, :start_time, :end_time, :words, :memo
  json.url daily_writing_url(daily_writing, format: :json)
end
