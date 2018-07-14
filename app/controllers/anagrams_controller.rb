class AnagramsController < ApplicationController
  def show
    standardized = WordCreator.standardize(word: params[:id])
    all_anagrams = Word.where(standardized: standardized)
                       .where.not(value: params[:id])
    anagrams = AnagramsPresenter.execute(target_word: params[:id],
                                         anagrams: all_anagrams)
    render json: { anagrams: anagrams }, status: 200
  end

end
