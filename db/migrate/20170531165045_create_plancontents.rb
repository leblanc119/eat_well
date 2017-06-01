class CreatePlancontents < ActiveRecord::Migration[5.0]
  def change
    create_table :plancontents do |t|
      t.integer :mealtime_id
      t.integer :meal_id

      t.timestamps

    end
  end
end
