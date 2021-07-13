class Task < ApplicationRecord
  belongs_to :user
  belongs_to :project
  has_many :comments, dependent: :destroy

  enum status: { to_do: 0, in_progress: 1, on_hold: 2, on_review: 3, completed: 4}

  validates :name, presence: true
  validates :details, presence: true
  validates :due_date, presence: true
end
