class Measure < ApplicationRecord
  belongs_to :measurement
  validates_presence_of :data
end
