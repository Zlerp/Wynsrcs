require 'rails_helper'

RSpec.describe Source, type: :model do
  it {should belong_to(:user) }

  it { should validate_presence_of(:link) }
  it { should validate_presence_of(:category) }
  it { should validate_presence_of(:description) }
  it { should validate_presence_of(:tags) }

end
