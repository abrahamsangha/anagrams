class WordsController < ApplicationController
  def create
    words = words_params.to_h["words"]
    WordCreator.execute(words: words)
    render status: :created
  end

  def destroy
    word = params[:id]
    Word.where(value: word).destroy_all
  end

  def destroy_all
    Word.destroy_all
  end

  private

  def words_params
    params.permit([{words: []} , :format])
  end

end
