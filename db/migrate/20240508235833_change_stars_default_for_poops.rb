class ChangeStarsDefaultForPoops < ActiveRecord::Migration[7.0]
  def up
    change_column :poops, :stars, :integer, default: 1
  end

  def down
    change_column :poops, :stars, :integer,  default: 0
  end
end
