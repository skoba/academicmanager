class Person < ActiveRecord::Base
  validates :given, presence: true
  validates :family, presence: true
end
