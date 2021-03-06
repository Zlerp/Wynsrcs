require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { create :user }

  describe "has correct associations" do
    it { should have_many :sources}
  end

  describe User do
    it {should validate_presence_of(:username)}
    it {should validate_presence_of(:email)}
    it {should validate_presence_of(:password)}
    it {should validate_presence_of(:password_confirmation)}
    it {should validate_confirmation_of(:password)}
    it {should validate_uniqueness_of(:email)}
  end
end
