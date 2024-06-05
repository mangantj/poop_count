class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :poops
  has_many :league_users
  has_many :leagues, through: :league_users

  validates :first_name, :last_name, presence: true

  def name
    [first_name, last_name].join(" ")
  end

  def league
    leagues.last
  end
end
