class Club < ApplicationRecord
  belongs_to :ClubAdulte
  belongs_to :ClubTeevo
  belongs_to :ClubJeuneLecteur
end
