class Inscription < ApplicationRecord
  belongs_to :club, optional: true

  # validates :club_name, presence: true
  validates :name, presence: true
  validates :age, presence: true, numericality: { only_integer: true, greater_than: 0 }
  validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :phone, presence: true, format: { with: /\A\d{10}\z/ }
end
