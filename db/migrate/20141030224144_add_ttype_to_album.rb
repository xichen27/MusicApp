class AddTtypeToAlbum < ActiveRecord::Migration
  def change

  	add_column :albums, :ttype, :string, null: false
  end
end
