class Project < ApplicationRecord
  enum status: { active: 0, inactive: 1 }

  belongs_to :user
  has_many :participants
  has_many :tasks, dependent: :destroy

  validates :title, presence: true
  validates :description, presence: true
end
