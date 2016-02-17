class Person < ActiveRecord::Base
  has_many :daily_writings

  validates :given, presence: true
  validates :family, presence: true
end
