class Book < ApplicationRecord
  belongs_to :user
  validates :title,presence:true
  validates :body,presence:true,length:{maximum:200}

  scope :created_today, -> { where(created_at: Time.zone.now.all_day) }
  scope :created_yesterday, -> { where(created_at: 1.day.ago.all_day) }
  scope :created_this_week, -> { where(created_at: 6.day.ago.beginning_of_day..Time.zone.now.end_of_day) }
  scope :created_last_week, -> { where(created_at: 2.week.ago.beginning_of_day..1.week.ago.end_of_day) }

  scope :created_today, -> { where(created_at: Time.zone.now.all_day) }
  scope :created_yesterday, -> { where(created_at: 1.day.ago.all_day) }
  scope :created_two_days_ago, -> { where(created_at: 2.day.ago.all_day) }
  scope :created_three_days_ago, -> { where(created_at: 3.day.ago.all_day) }
  scope :created_four_days_ago, -> { where(created_at: 4.day.ago.all_day) }
  scope :created_five_days_ago, -> { where(created_at: 5.day.ago.all_day) }
  scope :created_six_days_ago, -> { where(created_at: 6.day.ago.all_day) }
end
