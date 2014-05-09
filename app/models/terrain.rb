class Terrain < ActiveRecord::Base
  attr_accessible :email, :x, :y

	
  #Hardcoded for now, save to database later - Ardee
  @@tags = [
    [nil, nil, nil, nil, ["E","R"], ["E","R"]],
    ["T", "R", ["FO", "R"], "R", ["FI","R"], "E"],
    ["T", "X", "X", ["FO","R"],"R", nil]
  ]

  def self.tags
    @@tags
  end
end
