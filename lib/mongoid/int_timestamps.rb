# coding: utf-8
#

require 'mongoid'

module Mongoid 
  module IntTimestamps
    extend ActiveSupport::Concern
    
    included do 
      field :created_at, type: Integer 
      field :updated_at, type: Integer
      set_callback :create, :before, :set_created_at
      set_callback :update, :before, :set_updated_at
      
      def set_created_at
        time = Time.now.getlocal.to_i
        self.created_at = time 
        self.updated_at = time
      end 

      def set_updated_at
        self.updated_at = Time.now.getlocal.to_i
      end
    end
  end
end
