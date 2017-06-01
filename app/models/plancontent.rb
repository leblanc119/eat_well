# == Schema Information
#
# Table name: plancontents
#
#  id          :integer          not null, primary key
#  mealtime_id :integer
#  meal_id     :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Plancontent < ApplicationRecord

  belongs_to :meal
  belongs_to :mealtime, :class_name => "MealTime"

  validates :mealtime_id, :presence => true
  validates :meal_id, :presence => true

end
