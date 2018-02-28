Types::QueryType = GraphQL::ObjectType.define do
  name "Query"
  # Add root-level fields here.
  # They will be entry points for queries on your schema.

  field :artist do
    type Types::ArtistType
    description "Look up an artist by ID"
    argument :id, !types.ID
    resolve ->(obj, args, ctx) {
      Artist.find(args[:id])
    }
  end

  field :artists do
    type types[Types::ArtistType]
    description "Get a list of artists"
    resolve ->(obj, args, ctx) {
      Artist.all
    }
  end

  field :album do
    type Types::AlbumType
    argument :id, types.ID
    argument :title, types.String
    description "Find an album by ID or title"
    resolve ->(obj, args, ctx) {
      if args["id"].present?
         Album.find(args["id"])
      else
         Album.find_by_title(args["title"])
      end
    }
  end

end
