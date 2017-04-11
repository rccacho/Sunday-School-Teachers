class CreateActivities < ActiveRecord::Migration[5.0]
  def change
    create_table :activities do |t|
      t.string :key_verse
      t.string :review
      t.string :description
      t.string :materials
      t.string :media_ref
      t.belongs_to :user, foreign_key: true
      t.belongs_to :message, foreign_key: true

      t.timestamps
    end
  end
end
