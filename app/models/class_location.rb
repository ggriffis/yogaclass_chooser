class ClassLocation < ActiveRecord::Base
  attr_accessible :close, :close_parking, :free_parking, :place
  has_many :yoga_classes

  def to_s
    place
  end
end
