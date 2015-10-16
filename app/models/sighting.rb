class Sighting < ActiveRecord::Base
  validates :longitude, presence: true, numericality: true
  validates :latitude, presence: true, numericality: true
  validate do
    errors[:date] << "Cannot be in the future" if date && date > Date.today
  end

  belongs_to :species
end
