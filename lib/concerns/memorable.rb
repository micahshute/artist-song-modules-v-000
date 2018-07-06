
module Memorable

    module ClassMethods

      def all
        self.class.all
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
