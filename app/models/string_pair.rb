class StringPair
  include MongoMapper::EmbeddedDocument

  key :name, String
  key :localizations, Hash
end
