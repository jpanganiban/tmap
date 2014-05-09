class Inquiry < ActiveRecord::Base
  attr_accessible :email, :lat, :lon, :size
end
