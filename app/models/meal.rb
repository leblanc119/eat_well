# == Schema Information
#
# Table name: meals
#
#  id         :integer          not null, primary key
#  name       :string
#  image      :string
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Meal < ApplicationRecord
  belongs_to :user
  has_many :meal_tags, :dependent => :nullify
  has_many :favorites, :dependent => :destroy
  has_many :plancontents, :dependent => :destroy

  validates :user_id, :presence => true
  validates :name, :presence => true
  validates :image, :presence => true
end
