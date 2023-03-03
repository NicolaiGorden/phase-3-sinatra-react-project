class League < ActiveRecord::Base
    has_many :trainers
    has_many :mons, through: :trainers
end