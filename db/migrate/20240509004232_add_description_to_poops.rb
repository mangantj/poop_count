class AddDescriptionToPoops < ActiveRecord::Migration[7.0]
  def change
    add_column :poops, :description, :text
  end
end
