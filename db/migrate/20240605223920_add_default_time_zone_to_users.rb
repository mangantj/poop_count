class AddDefaultTimeZoneToUsers < ActiveRecord::Migration[7.0]
  def change
    change_column :users, :time_zone, :string, default: "Central Time (US & Canada)"
  end
end
