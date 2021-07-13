class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  enum role: { manager: 0, developer: 1 }

  has_many :projects, dependent: :destroy
  has_many :participants, dependent: :destroy
  has_many :tasks, dependent: :destroy
  has_many :comments, dependent: :destroy

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates_uniqueness_of :username
  validates :phone_number, presence: true
  validates :gender, presence: true
end
