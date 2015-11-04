class WordsController < ApplicationController
  def index
    @words = Word.all
  end

  def show
    @word = Word.find(params[:id])
  end

  def new
    @user = current_user
    @word = Word.new
    @definition = Definition.new
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
