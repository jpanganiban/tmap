class Land < ActiveRecord::Base
  attr_accessible :earthquake, :flooding, :landslide, :tags, :tsunami, :x, :y,
    :floor_limit

  @@min_lon = 1445000
  @@max_lon = 1460000

  @@min_lat = 12130000
  @@max_lat = 12160000

  def random_lon
    diff = (@@max_lon - @@min_lon) / 3
    (@@min_lon..@@max_lon - (x * diff)).to_a.sample / 100000.0
  end

  def random_lat
    diff = (@@max_lat - @@min_lat) / 6
    (@@min_lat + (y * diff)..@@max_lat).to_a.sample / 100000.0
  end

  def parsed_tags
    unless tags.nil?
      return tags.split(',').map { |t| t.strip }
    end
    return []
  end
end
