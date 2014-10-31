class AddTtypeAndLyricsToTrack < ActiveRecord::Migration
  def change

  	add_column :tracks, :ttype, :string, null: false
  	add_column :tracks, :lyrics, :text, null: false
  end
end
