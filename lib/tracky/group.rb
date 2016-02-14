module Tracky
  class Group < BaseAPI
    attr_accessor :id, :path_vanity, :name,
                  :bio, :vanity, :email,
                  :location, :phone, :url,
                  :latitude, :longitude,
                  :icon, :type, :deleted, :private

    def self.all
      get(url("groups"))
    end

  end
end
