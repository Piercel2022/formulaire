class AddClubToInscription < ActiveRecord::Migration[7.0]
  def change
    add_reference :inscriptions, :club, null: false, foreign_key: true
    change_column_null :inscriptions, :club_id, null: true
  end
end
