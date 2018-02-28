Types::AlbumType = GraphQL::ObjectType.define do
  name "Album"
  description "A big black round thing"
  field :id, !types.ID
  field :title, types.String
  field :year, types.Int
  field :artist, Types::ArtistType
end

