class YogaClass < ActiveRecord::Base
  attr_accessible :day_of_week, :time_of_day, :duration, :good_time,
                  :class_type_id, :teacher_id, :class_location_id, :favorite,
                  :like, :class_notes
  belongs_to :class_location
  belongs_to :class_type
  belongs_to :teacher

  def self.time_of_day_hash
    {
      "tod_early_morning" => (0...9),
      "tod_morning" => (9...11),
      "tod_noonish" => (11...14),
      "tod_afternoon_early_evening" => (14...17),
      "tod_evening" => (17..23)
    }
  end

  def day_number
    (Date::DAYNAMES).index(day_of_week)
  end

  def self.search_day(day, tods, param_type)
    search_array = Array.new
    self.all.each do |e|
      if e.day_of_week == day \
          && e.includes_time_of_day(tods) \
          && (!param_type.present? || e.class_type.class_category == param_type)
        search_array << e
        if (e.good_time) then search_array << e end
        if e.class_location.close? then search_array << e end
        if e.class_location.close_parking? then search_array << e end
        if e.class_location.free_parking? then search_array << e end
        if !e.teacher.nil?
          if e.teacher.like? then search_array << e end
          if e.teacher.not_my_favorite?
            search_array.delete_at search_array.index(e) unless search_array.index(e).nil?
          end
        end
        if e.class_type.like? then search_array << e end
        if e.like? then search_array << e end
        if e.favorite?
          search_array << e
          search_array << e
          search_array << e
        end
      end
    end
    selection_array = Array.new
    if !search_array.empty?
      selection_array << search_array[Random.rand( 0..(search_array.size - 1) )]
    end
    selection_array
  end

  def includes_time_of_day(tods)
    if tods.empty? then return true end
    an_array = ( tods.select do |e|
      time_range = self.class.time_of_day_hash[e]
      time_range === time_of_day.hour
    end )
    !an_array.empty?
  end
end
