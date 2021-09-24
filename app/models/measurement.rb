class Measurement < ApplicationRecord
   # model association
  has_many :measures, dependent: :destroy

   # validations
  validates_presence_of :name, :photo
end
