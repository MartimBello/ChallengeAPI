class RvSerializer
  include JSONAPI::Serializer
  attributes :make, :model, :year, :description, :image_url, :daily_rate
end
