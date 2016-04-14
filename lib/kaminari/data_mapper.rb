require "kaminari/data_mapper/version"
require 'kaminari'
require 'data_mapper'

module Kaminari
  module DataMapper
  end
end

require 'dm-aggregates'
require 'kaminari/data_mapper/data_mapper_extension'
::DataMapper::Collection.send :include, Kaminari::DataMapperExtension::Collection
::DataMapper::Model.append_extensions Kaminari::DataMapperExtension::Model
# ::DataMapper::Model.send :extend, Kaminari::DataMapperExtension::Model
