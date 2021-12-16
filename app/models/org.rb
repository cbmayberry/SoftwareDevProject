class Org < ActiveRecord::Base
    has_many :events, dependent: :destroy #org's events destroyed if org destroyed
    has_and_belongs_to_many :users

end