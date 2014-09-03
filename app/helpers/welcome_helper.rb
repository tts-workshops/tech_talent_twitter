module WelcomeHelper

	#full disclosure: I had to google this code (found on Stack Overflow)
	#Lesson: googling is a coder's best friend; don't
	#think you need to know the answer to every problem
	#right off the top of your head.

	def resource_name
    :user
  end

  def resource
    @resource ||= User.new
  end

  def devise_mapping
    @devise_mapping ||= Devise.mappings[:user]
  end

end
