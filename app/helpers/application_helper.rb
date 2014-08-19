module ApplicationHelper

	# Below are examples of helper methods available views.
	# To be available in controllers, you must write

	#           include ApplicationHelper   
	
	# in controller

	def current_user
		@current_user ||= User.find_by_id(session[:user])
	end

	def logged_in?
		current_user != nil
	end
end
