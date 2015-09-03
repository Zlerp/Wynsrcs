require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { create :user }

  describe "has correct associations" do
    it { should have_many :sources}
  end
end
