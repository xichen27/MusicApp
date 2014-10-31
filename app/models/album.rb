class Album < ActiveRecord::Base

	TTYPE = ["studio", "live"]

	validates :name, :band_id, presence: true
	validates :ttype, inclusion: TTYPE

	has_many :tracks, dependent: :destroy
	belongs_to :band

end
