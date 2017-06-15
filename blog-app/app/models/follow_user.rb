# == Schema Information
#
# Table name: follow_users
#
#  id          :integer          not null, primary key
#  user_id     :integer
#  follower_id :integer
#  isChecked   :boolean          default("0")
#
# Indexes
#
#  fk_rails_6bfac4ba98  (user_id)
#

class FollowUser < ApplicationRecord
  belongs_to :user
  has_many :notifications, as: :notificationable, dependent: :destroy

  def self.check_decrease_notifications user, follow_user
    return false if follow_user.notifications == Array.new
    user.count_notifications > 0 && follower.notifications.first.isChecked == true
  end
end
