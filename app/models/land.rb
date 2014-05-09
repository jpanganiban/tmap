class Land < ActiveRecord::Base
  attr_accessible :earthquake, :flooding, :landslide, :tags, :tsunami, :x, :y
end
