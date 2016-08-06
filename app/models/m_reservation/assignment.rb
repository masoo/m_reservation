module MReservation
  class Assignment < ActiveRecord::Base
    belongs_to :reservation
    belongs_to :resource
  end
end
