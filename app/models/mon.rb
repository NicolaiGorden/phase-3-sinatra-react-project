class Mon < ActiveRecord::Base
    has_many :trainers
    has_many :leagues, through: :trainers
end