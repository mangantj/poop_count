class LeagueUser < ApplicationRecord
  belongs_to :league
  belongs_to :user

  validate :one_league, on: :create

  def one_league
    if user.leagues.count > 0
      errors.add(:user_id, "User can only have one league at this time.")
    end
  end
end
