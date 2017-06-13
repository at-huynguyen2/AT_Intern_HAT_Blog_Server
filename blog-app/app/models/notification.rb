# == Schema Information
#
# Table name: notifications
#
#  id                    :integer          not null, primary key
#  notificationable_id   :integer
#  notificationable_type :string(255)
#  user_id               :integer
#  message               :string(255)
#  image                 :string(255)
#  isChecked             :boolean          default("0")
#  created_at            :datetime         not null
#  updated_at            :datetime         not null
#
# Indexes
#
#  fk_rails_b080fb4855  (user_id)
#

class Notification < ApplicationRecord
  # before_destroy :check_condition
  # after_destroy :check_condition_2
  belongs_to :user #, counter_cache: :count_notifications #, counter_cache: true
  belongs_to :notificationable, polymorphic: true

  # def check_condition
  #   binding.pry
  # end

  # def check_condition_2
  #   binding.pry
  # end

end
