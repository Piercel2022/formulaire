class CreateClubAdultes < ActiveRecord::Migration[7.0]
  def change
    create_table :club_adultes do |t|
      t.string :name
      t.references :inscription, null: false, foreign_key: true

      t.timestamps
    end
  end
end
