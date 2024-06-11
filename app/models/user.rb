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

  def poops_per_day_for_week(time)
    monday = time.beginning_of_week
    Rails.cache.fetch("#{id}-#{monday.to_i}-#{latest_poop_time_for_week(time)}") do
      week_poops = {}
      monday.to_datetime.upto(time.sunday.to_datetime) do |day|
        back_to_time = day.to_time
        week_poops[back_to_time.strftime("%A")] = poop_count_for_day(back_to_time)
      end
      week_poops
    end
  end

  def poop_count_for_day(time)
    beginning_of_day = time.beginning_of_day
    end_of_day = time.end_of_day
    poops.where(time: beginning_of_day..end_of_day).count
  end

  def latest_poop_time_for_week(time)
    beginning_of_day = time.beginning_of_day
    end_of_day = time.sunday.end_of_day
    poops.where(time: beginning_of_day..end_of_day).order(created_at: :desc).first&.created_at&.to_i
  end
end
