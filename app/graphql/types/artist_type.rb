Types::ArtistType = GraphQL::ObjectType.define do
  name "Artist"
  description "A musician or band"
  field :id, !types.ID
  field :name, !types.String
  field :genre, types.String
  field :albums, types[Types::AlbumType]

  field :yearsActive, types.String do
    resolve ->(obj, args, ctx) {
      "Active: " + obj.year_active_start.to_s + "-" + obj.year_active_end.to_s
    }
  end
end
