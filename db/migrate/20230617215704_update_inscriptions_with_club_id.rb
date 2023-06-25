class UpdateInscriptionsWithClubId < ActiveRecord::Migration[7.0]
  def up
    club = Club.first # Replace with the appropriate club record or query

    #Inscription.update_all(club_id: club.id)
  end

  def down
    Inscription.update_all(club_id: nil)
  end
end
