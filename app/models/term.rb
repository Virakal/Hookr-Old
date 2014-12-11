class Term < ActiveRecord::Base
	validates :english, presence: true
	validates :american, presence: true
end
