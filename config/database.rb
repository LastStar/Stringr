MongoMapper.connection = Mongo::Connection.new('localhost', nil, :logger => logger)

case Padrino.env
  when :development then MongoMapper.database = 'stringr_development'
  when :production  then MongoMapper.database = 'stringr_production'
  when :test        then MongoMapper.database = 'stringr_test'
end
