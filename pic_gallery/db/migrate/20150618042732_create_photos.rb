class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
    	 t.text :caption
      t.string :image
      t.references :album
      t.timestamps
    end
  end
end
