class Measurement < ApplicationRecord
  # model association
  has_many :measures, dependent: :destroy

  # validations
  validates_presence_of :name, presence: true, length: { minimum: 4, maximum: 30 }
  validates_presence_of :photo
end
