class CreatePoops < ActiveRecord::Migration[7.0]
  def change
    create_table :poops do |t|
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
