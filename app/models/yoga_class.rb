class YogaClass < ActiveRecord::Base
  attr_accessible :day_of_week, :time_of_day, :duration, :good_time, :class_type_id, :teacher_id, :class_location_id
  belongs_to :class_location
  belongs_to :class_type
  belongs_to :teacher

  def day_number
    (Date::DAYNAMES).index(day_of_week)
  end

  def self.search_day(day)
    search_array = Array.new
    self.all.each do |e|
      search_array << e
      if (e.day_of_week == day) then search_array << e end
      if (e.good_time) then search_array << e end
      if e.class_location.close? then search_array << e end
      if e.class_location.close_parking? then search_array << e end
      if e.class_location.free_parking? then search_array << e end
      if e.teacher.like? then search_array << e end
      if e.class_type.like? then search_array << e end
    end
    selection_array = Array.new
    if !search_array.empty?
      selection_array << search_array[Random.rand( 0..(search_array.size - 1) )]
    end
    selection_array
  end
end
