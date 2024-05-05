class Booking < ApplicationRecord
    has_one :rv
    enum status: {
        Booked: 0,
        Cancelled: 1,
        Completed: 2,
    }
end
