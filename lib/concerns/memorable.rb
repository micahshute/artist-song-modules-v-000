
module Memorable

  @@all = []
  
    module ClassMethods

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
      self.class.all << self
    end

  end

end
