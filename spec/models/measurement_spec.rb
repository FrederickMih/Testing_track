
require 'rails_helper'

RSpec.describe Measurement, type: :model do
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:photo) }
  end