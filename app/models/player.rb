class Player < ActiveRecord::Base
	validates :name, :email, presence: true
	validates :username, uniqueness: true
	validates :username, length: { in: 5..20 }
	validates :points, length: {
	    minimum: 0,
	    too_short: "must have at least 1 character",
  	}
  	validates_numericality_of :points, only_integer: true
=begin
	t.string :email
	t.string :name
	t.string :username
	t.integer :points
	t.boolean :active
=end
end
