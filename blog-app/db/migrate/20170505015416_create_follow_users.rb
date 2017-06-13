class CreateFollowUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :follow_users do |t|
      t.integer :user_id
      t.integer :follower_id
    end

    add_foreign_key :follow_users, :users

  end
end
