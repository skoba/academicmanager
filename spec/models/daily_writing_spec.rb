require 'rails_helper'

RSpec.describe DailyWriting, type: :model do
  it { is_expected.to belong_to :person }

  let(:daily_writing) { create :daily_writing }
  subject { daily_writing }

  it { is_expected.to be_valid }

  context 'start time should be earlier than end time' do
    before { daily_writing.start_time = '2016-02-17 13:35:00' }
    it { is_expected.not_to be_valid }
  end

  context 'end time should be later than start time' do
    before { daily_writing.end_time = '2016-02-17 10:30:00' }
    it { is_expected.not_to be_valid }
  end
end
