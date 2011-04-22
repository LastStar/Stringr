class Project
  include MongoMapper::Document

  key :name, String

  many :string_pairs

  timestamps!
end
