
module Memorable

    module ClassMethods

      @@all = []

      def all 
        @@all
      end

      def count
        self.class.all.length
      end

      def reset_all
        self.class.all.clear
      end

  end

  module InstanceMethods

    def initialize
      self.class.all << self
    end

  end

end
