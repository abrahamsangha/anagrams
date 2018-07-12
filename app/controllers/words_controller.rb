class WordsController < ApplicationController
  def create
    words_params[:words].each { |word| Word.create(word) }
    render status: :created
  end

  def words_params
    params.require(:word).permit(words: [])
  end


end
