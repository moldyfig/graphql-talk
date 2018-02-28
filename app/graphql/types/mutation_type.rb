Types::MutationType = GraphQL::ObjectType.define do
  name "Mutation"

  field :createAlbum, Types::AlbumType do
    description "Create a new album"
    argument :title, !types.String
    argument :year, !types.Int
    argument :artist_id, !types.Int
    argument :record_label_id, !types.Int

    resolve ->(obj, args, ctx) {
      Album.create(:title => args["title"], :year => args["year"], :artist_id => args["artist_id"], :record_label_id => args["record_label_id"])
    }
  end
end
