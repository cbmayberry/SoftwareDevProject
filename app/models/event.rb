class Event < ActiveRecord::Base
    belongs_to :org
    
#validations
    #event only valid if associated w an organization
    validates :org, :presence => true
    
end
