class FilmSerializer < ActiveModel::Serializer
  attributes :id, :title, :director, :year, :rating
end
