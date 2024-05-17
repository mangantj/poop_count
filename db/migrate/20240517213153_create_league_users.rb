class CreateLeagueUsers < ActiveRecord::Migration[7.0]
  def change
    # create_join_table :leagues, :workers do |t|
    #   t.index [:city_id, :worker_id], unique: true
    # end
    create_table :league_users do |t|
      t.references :league, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.index [:league_id, :user_id], unique: true
      t.timestamps
    end
  end
end
