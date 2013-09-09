class ClassType < ActiveRecord::Base
  attr_accessible :like, :name, :class_category
  has_many :yoga_classes

  def self.class_categories
    ["Moderate", "Mellow", "Mostly Meditation", "Yin", "Specialty", "Intense"]
  end

  def class_categories
    self.class.class_categories
  end

  def to_s
    name + " - " + class_category
  end
end
