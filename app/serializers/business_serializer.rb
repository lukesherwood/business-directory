class BusinessSerializer
  include JSONAPI::Serializer
  attributes :name, :website, :state, :founded_date
end
