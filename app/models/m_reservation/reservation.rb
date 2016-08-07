module MReservation
  class Reservation < ActiveRecord::Base
    has_many :assignments
    has_many :resources, through: :assignments
  end
end
