FactoryBot.define do
  factory :daily_writing do
    person
    start_time { "2016-02-17 11:35:53" }
    end_time { "2016-02-17 12:35:53" }
    words { "356" }
    memo { "My words" }
  end
end
