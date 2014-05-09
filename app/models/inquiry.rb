class Inquiry < ActiveRecord::Base
  attr_accessible :email, :lat, :lon, :size

  @@grid = [
    (1..6).to_a,
    (1..6).to_a,
    (1..6).to_a
  ]

  def self.grid
    @@grid
  end
end
