class DefinitionsController < ApplicationController
  def index
		@definitions = definition.all
	end
	def new
		logged_user
		@definition = @user.definitions.new
	end
	def create
		logged_user
		@definition = @user.definitions.new( definition_params )

	  if @definition.save
			redirect_to user_path( @user.id )
		else
			render :new
		end
	end
	def show
		logged_user
		@definition = definition.find( params[ :id ] )
		@content = @definition.content
	end
	def edit
		logged_user
		@definition = definition.find( params[ :id ] )
		@content = @definition.content
	end
	def update
		logged_user
		@definition = definition.find( params[ :id ] )
		if @definition.update_attributes( definition_params )
			redirect_to user_path( @user.id )
		else
			render :edit
		end
	end
	def destroy
		logged_user
		@definition = definition.find( params[ :id ] )
		@definition.destroy
		redirect_to user_path( @user.id )
	end

	private
	def definition_params
		params.require( :definition ).permit( :content )
	end
	def logged_user
		@user = User.find( current_user[ :id ] )
	end

end
