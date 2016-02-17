require 'rails_helper'

RSpec.describe Person, type: :model do
  it { is_expected.to have_many :daily_writings }

  let (:person) { create :person }  
  subject { person }

  it { is_expected.to be_valid }

  describe 'given name is mandatory' do
    before { person.given = nil }

    it { is_expected.not_to be_valid }
  end

  describe 'family name is mandatory' do
    before { person.family = nil }

    it { is_expected.not_to be_valid }
  end
end
