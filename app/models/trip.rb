class Trip < ApplicationRecord
  has_many :trail_trips
  has_many :trails, through: :trail_trips

  def total_hiking_distance
    trails.sum(:length)
  end

  def average_hiking_distance
    trails.average(:length).round(2)
  end

  def longest_hiking_distance
    trails.maximum(:length)
  end

  def shortest_hiking_distance
    trails.minimum(:length)
  end
end
