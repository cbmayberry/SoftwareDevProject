class Event < ActiveRecord::Base
    belongs_to :org

#validations
    #event only valid if associated w an organization
    validates :org, :presence => true

    def self.search(search)
        if search
            event_name = Event.find_by(event_name: search)
        else
            @events = Event.all
        end
    end

end
