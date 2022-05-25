class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :categories, dependent: :destroy
  has_many :entities, dependent: :destroy
  validates :name, length: { maximum: 250 }, presence: true
  # User::Roles
  # The available roles
  Roles = [ :admin , :default ]

  def is?(requested_role)
    role == requested_role.to_s
  end
end
