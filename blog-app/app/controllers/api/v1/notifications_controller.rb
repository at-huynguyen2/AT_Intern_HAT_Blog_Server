class Api::V1::NotificationsController < BaseController
	before_action :authentication! , only: [:index,:update]
	def index
		render json: Notification.where(user_id: current_user.id).order(created_at: :desc) if params[:user_username] == current_user.username
	end

	def update
		notification = Notification.find(params[:id])
		notification.update_columns(isChecked: 1)
		binding.pry
    @current_user.update_columns count_notifications: @current_user.count_notifications - 1
		render json: Notification.where(user_id: current_user.id)
	end
end
