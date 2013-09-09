class YogaClass < ActiveRecord::Base
  attr_accessible :day_of_week, :time_of_day, :duration, :good_time, :class_type_id, :teacher_id, :class_location_id
  belongs_to :class_location
  belongs_to :class_type
  belongs_to :teacher

  def day_number
    (Date::DAYNAMES).index(day_of_week)
  end
end
