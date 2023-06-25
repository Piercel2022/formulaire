class CreateClubs < ActiveRecord::Migration[7.0]
  def change
    create_table :clubs do |t|
      t.string :name
      t.references :club_adulte, null: false, foreign_key: true
      t.references :club_teevo, null: false, foreign_key: true
      t.references :club_jeune_lecteur, null: false, foreign_key: true

      t.timestamps
    end
  end
end
