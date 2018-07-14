class WordsController < ApplicationController
  def create
    words = words_params.to_h["words"]
    WordCreator.execute(words: words)
    render status: :created
  end

  def words_params
    params.permit([{words: []} , :format])
  end

  def destroy
    Word.delete_all
  end
end
