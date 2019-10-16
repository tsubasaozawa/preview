class CreatePreimages < ActiveRecord::Migration[5.2]
  def change
    create_table :preimages do |t|
      t.text :content
      t.text :image

      t.timestamps
    end
  end
end
