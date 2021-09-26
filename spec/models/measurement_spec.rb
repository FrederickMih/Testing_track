require 'rails_helper'

RSpec.describe Measurement, type: :model do
  # ensure Meaurement model has a 1:m relationship with the measure model
  it { should have_many(:measures).dependent(:destroy) }
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:photo) }
end
