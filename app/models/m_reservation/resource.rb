module MReservation
  class Resource < ActiveRecord::Base
    has_many :assignments
    has_many :reservations, through: :assignments
  end
end
