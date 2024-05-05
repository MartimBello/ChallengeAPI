class BookingSerializer
  include JSONAPI::Serializer
  attributes :user_id, :start_date, :end_date, :total_price, :status

  has_one :rv, serializer: RvSerializer
end
