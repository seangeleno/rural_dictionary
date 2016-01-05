class WordsController < ApplicationController
  def index
    @words = Word.all
    @users = User.all
  end


  def show
    @users = User.all
    @word = Word.find(params[:id])
  end

  def edit
    # @users = User.all
    @word = Word.find(params[:id])
    @definition = Definition.where({user_id: @word.user.id, word_id: @word.id}).first
    if @word.update
      redirect_to root_path
    else
      render "edit"
    end
  end

  def new
    @user = current_user
    @word = Word.new
    @definition = Definition.new
  end

  def destroy
    @user = current_user
    @word = Word.find( params[ :id ] )
		@word.destroy
		redirect_to root_path
  end

  def create
    @user = current_user
    @word = @user.words.create(word_params)
    @word.save
    @definition = @word.definitions.create(definition_params)
    @definition.user = @user
    @definition.save
    @word.definition_id = @definition.id
    @word.save
    redirect_to root_path
  end
  private
  def word_params
    params.require(:word).permit(:word, :user_id, definiton_attributes: [:definition])
  end
  def definition_params
    params.require(:definition).permit(:definition, :vote_up, :vote_down, :user_id)
  end
end
