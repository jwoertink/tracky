module Tracky
  class Group < BaseAPI

    def self.all
      get(url("groups"))
    end

  end
end
