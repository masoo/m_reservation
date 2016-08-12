module MReservation
  class Reservation < ActiveRecord::Base
    has_many :assignments
    has_many :resources, through: :assignments
    
    # It is in the range of the specified time.
    # @param [TimeWithZone] specified time
    # @return [true] It is included in the range.
    # @return [false] It is not included in the range.
    def cover?(time_zone)
      (started_at..ended_at).cover?(time_zone)
    end

    # It isn't in the range of the specified time.
    # @param [TimeWithZone] specified time
    # @return [true] It is not included in the range.
    # @return [false] It is included in the range.
    def uncover?(time_zone)
      !(cover?(time_zone))
    end
  end
end
