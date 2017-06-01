# == Schema Information
#
# Table name: plans
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  plan_date  :date
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Plan < ApplicationRecord

  belongs_to :user

  validates :user_id, :presence => true
  validates :meal_day, :presence => true

end
