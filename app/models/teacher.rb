class Teacher < ActiveRecord::Base
  attr_accessible :like, :name
  has_many :yoga_classes

  def to_s
    name
  end
end
