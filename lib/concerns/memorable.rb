include 'pry'
module Memorable

    module ClassMethods

      @@all = []

      def all
        @@all
      end

      def count
        @@all.length
      end

      def reset_all
        @@all.clear
      end
  end

  module InstanceMethods

    def initialize
      binding.pry
      self.class.all << self
    end

  end

end
