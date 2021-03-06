class Workout < ApplicationRecord
  belongs_to :user
  validates :content,  presence: true
  scope :beginner, -> { where('calories_burned < ?', 200) }

end
