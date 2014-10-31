class Track < ActiveRecord::Base
	TTYPE = ["bonus", "regular"]

	validates :name, :album_id, :ttype, :lyrics, presence: true
	validates :name, uniqueness: true
	validates :ttype, inclusion: TTYPE

	belongs_to :album
end
