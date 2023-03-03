class Trainer < ActiveRecord::Base
    belongs_to :league
    has_many :mons
end