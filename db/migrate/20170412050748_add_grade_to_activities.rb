class AddGradeToActivities < ActiveRecord::Migration[5.0]
  def change
    add_column :activities, :grade, :string
  end
end
