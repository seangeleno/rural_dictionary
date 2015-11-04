class DefinitionsController < ApplicationController
  def index
    @users = User.all
		@definitions = Definition.all
	end
	def new
		@definition = Definition.new
	end
	def create
    @user = current_user
		@definition = @user.definitions.new( definition_params )

	  if @definition.save
			redirect_to user_path( @user )
		else
			render :new
		end
	end
	def show
		@definition = Definition.find( params[ :id ] )
		# @content = @definition.definition
	end
	def edit
		@definition = Definition.find( params[ :id ] )
		# @content = @definition.content
	end
	def update

		@definition = Definition.find( params[ :id ] )
		if @definition.update_attributes( definition_params )
			redirect_to user_path( current_user)
		else
			render :edit
		end
	end
	def destroy

		@definition = Definition.find( params[ :id ] )
		@definition.destroy
		redirect_to user_path( current_user)
	end

	private
	def definition_params
		params.require( :definition ).permit( :definition , :vote_up , :vote_down )
	end
	# def logged_user
	# 	@user = User.find( current_user.id)
	# end

end
