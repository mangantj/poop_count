class AddStarsToPoops < ActiveRecord::Migration[7.0]
  def change
    add_column :poops, :stars, :integer, default: 0
  end
end
