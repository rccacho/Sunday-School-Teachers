class CreateMessages < ActiveRecord::Migration[5.0]
  def change
    create_table :messages do |t|
      t.string :series
      t.string :title
      t.string :content
      t.string :costumes
      t.string :props
      t.boolean :featured
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end
