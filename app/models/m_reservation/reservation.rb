module MReservation
  class Reservation < ActiveRecord::Base
    has_many :assignments
    has_many :resources, through: :assignments
    
    # It is in the range of the specified time.
    # @param [TimeWithZone] specified time
    # @return [true] It is included in the range.
    # @return [false] It is not included in the range.
    def include?(time_zone)
      (started_at <= time_zone) and (time_zone <= ended_at)
    end

    # It isn't in the range of the specified time.
    # @param [TimeWithZone] specified time
    # @return [true] It is not included in the range.
    # @return [false] It is included in the range.
    def exclude?(time_zone)
      !(include?(time_zone))
    end
  end
end
