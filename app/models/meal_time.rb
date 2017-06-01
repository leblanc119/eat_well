# == Schema Information
#
# Table name: meal_times
#
#  id         :integer          not null, primary key
#  time       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class MealTime < ApplicationRecord

  has_many :plans, :foreign_key => "mealtime_id", :dependent => :nullify

  validates :time, :presence => true
  validates :time, :uniqueness => true
end
