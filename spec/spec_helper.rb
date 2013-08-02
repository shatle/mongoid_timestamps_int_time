# coding: utf-8
#

require 'rubygems'
require 'bundler'
require 'rspec'

$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
$LOAD_PATH.unshift(File.dirname(__FILE__))

require 'mongoid'
Mongoid.load!(File.dirname(__FILE__)+'/mongoid.yml', :test)
require 'mongoid_timestamps_int_time'

class User
  include Mongoid::Document
  include Mongoid::IntTimestamps

  field :name, type: String

end
