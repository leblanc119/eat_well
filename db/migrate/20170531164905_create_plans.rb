class CreatePlans < ActiveRecord::Migration[5.0]
  def change
    create_table :plans do |t|
      t.integer :user_id
      t.date :plan_date

      t.timestamps

    end
  end
end
