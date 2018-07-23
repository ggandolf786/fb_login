class CreateProfiles < ActiveRecord::Migration[5.1]
  def change
    create_table :profiles do |t|
      t.string :name
      t.string :uid
      t.string :profile_pic
      t.string :img1
      t.string :img2
      t.string :img3
      t.string :img4
      t.string :img5
      t.string :img6
      t.string :img7
      t.string :img8
      t.string :img9
      t.string :img10
      t.string :img11
      t.string :img12

      t.timestamps
    end
  end
end
