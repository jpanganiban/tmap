class Inquiry < ActiveRecord::Base
  attr_accessible :email, :x, :y, :answers_attributes
  has_many :answers
  accepts_nested_attributes_for :answers

  @@grid = [
    (1..6).to_a,
    (1..6).to_a,
    (1..6).to_a
  ]

  def self.grid
    @@grid
  end
end
