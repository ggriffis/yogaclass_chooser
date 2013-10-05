class Teacher < ActiveRecord::Base
  attr_accessible :like, :name, :not_my_favorite
  has_many :yoga_classes

  def to_s
    name
  end
end
