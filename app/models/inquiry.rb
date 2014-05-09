class Inquiry < ActiveRecord::Base
  attr_accessible :email, :x, :y, :answers_attributes, :classification
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
end
