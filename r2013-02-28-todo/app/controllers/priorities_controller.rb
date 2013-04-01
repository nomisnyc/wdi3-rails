class PrioritiesController < ApplicationController
  def index
    @priorities = @auth.priorities.order(:value).reverse
  end
  def up
    priority = Priority.find(params[:id])
    render :json => priority.swap_higher(@auth)
  end
  def down
    priority = Priority.find(params[:id])
    render :json => priority.swap_lower(@auth)
  end
  def create
    priority = Priority.create(params[:priority])
    @auth.priorities << priority
    render :json => [priority]
  end
  def update
    priority = Priority.find(params[:id])
    priority.update_attributes(params[:priority])
    render :json => [priority]
  end
end




# class PrioritiesController < ApplicationController

# 	def index
# 		@priorities = @auth.priorities
# 	end
# 	def up 
# 		priority = Priority.find(params[:id])
# 		higher = @auth.priorities.where('value > ?', priority.value).order('value ASC').first

# 		if higher.present?
# 			temp = priority.value
# 			priority.value = higher.value
# 			higher.value = temp
# 			priority.save
# 			higher.save
# 			render :json => [priority, higher]
# 		else
# 			render :json => [priority]
# 		end
# 	end
# 	def down
# 	end
# 	def create
# 		# if id.present?
# 		# 	priority = Priority.find(id)
# 		# 	priority.color = color
# 		# 	priority.name = name
# 		# 	priority.value = value
# 		# 	priority.save
# 		# else
# 		priority = Priority.create(params[:priority])
# 		@auth.priorities << priority #puts the priority into the @auth.priorities array
# 		render :json => [priority]
# 	end
# 	def update
# 	  priority = Priority.find(params[:id])
# 	  priority.update_attributes(params[:priority])
# 	 	render :json => priority

# 	end
# end
