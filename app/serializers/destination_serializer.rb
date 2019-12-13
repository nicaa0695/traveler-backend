class DestinationSerializer < ActiveModel::Serializer
    attributes :id, :name, :country, :image, :visited, :bucket_list
    has_many :categories
  end