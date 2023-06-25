class AddNullToClubId < ActiveRecord::Migration[7.0]
  def change
    change_column_null :inscriptions, :club_id, null: true
  end
end
