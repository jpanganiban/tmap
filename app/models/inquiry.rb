class Inquiry < ActiveRecord::Base
  attr_accessible :email, :answers_attributes, :classification
  attr_accessible :lon, :lat, :x, :y

  after_create :after_create_hook

  has_many :answers
  accepts_nested_attributes_for :answers

  @@classifications = [
    "residential",
    "commercial",
    "industrial",
  ]

  @@grid = [
    (1..6).to_a,
    (1..6).to_a,
    (1..6).to_a
  ]

  def self.grid
    @@grid
  end

  def self.classifications
    @@classifications
  end

  def land
    l = Land.where(x: x, y: y).first
    # XXX: Create land if it doesn't exist yet.
    if l.nil?
      l = Land.create(x: x, y: y)
    end
    return l
  end

  private
  def after_create_hook
    update_attributes(lon: land.random_lon,
                      lat: land.random_lat)
  end
end
