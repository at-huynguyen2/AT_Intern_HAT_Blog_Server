# == Schema Information
#
# Table name: follow_users
#
#  id          :integer          not null, primary key
#  user_id     :integer
#  follower_id :integer
#
# Indexes
#
#  fk_rails_6bfac4ba98  (user_id)
#

class FollowUser < ApplicationRecord
  belongs_to :user
  has_many :notifications, as: :notificationable, dependent: :destroy
end
