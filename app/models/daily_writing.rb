class DailyWriting < ActiveRecord::Base
  belongs_to :person

  validate :start_time_cannot_be_later_than_end_time

  def start_time_cannot_be_later_than_end_time
    if start_time.present? && end_time.present? && start_time > end_time
      errors.add(:start_time, 'cannot assign future time of end time')
    end
  end
end
