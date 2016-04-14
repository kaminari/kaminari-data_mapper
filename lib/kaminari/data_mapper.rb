require "kaminari/data_mapper/version"

module Kaminari
  module DataMapper
  end
end

begin; require 'data_mapper'; rescue LoadError; end
if defined? ::DataMapper
  require 'dm-aggregates'
  require 'kaminari/data_mapper/data_mapper_extension'
  ::DataMapper::Collection.send :include, Kaminari::DataMapperExtension::Collection
  ::DataMapper::Model.append_extensions Kaminari::DataMapperExtension::Model
  # ::DataMapper::Model.send :extend, Kaminari::DataMapperExtension::Model
end
