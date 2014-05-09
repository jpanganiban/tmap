class Inquiry < ActiveRecord::Base
  attr_accessible :email, :lat, :lon, :size

  @@grid = [
    (1..6).to_a,
    (7..12).to_a,
    (13..18).to_a,
    (19..24).to_a,
  ]

  def self.grid
    @@grid
  end
end
