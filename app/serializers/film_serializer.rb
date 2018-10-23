class FilmSerializer < ActiveModel::Serializer
  attributes :id, :title, :director, :rating, :watched
end
