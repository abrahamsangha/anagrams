class AnagramsController < ApplicationController
  def show
    standardized = WordCreator.standardize(word: params[:id])
    limit = anagrams_params[:limit].to_i == 0 ? nil : anagrams_params[:limit].to_i
    anagrams = Word.where(standardized: standardized)
                       .where.not(value: params[:id])
                       .limit(limit)
                       .map(&:value)
    render json: { anagrams: anagrams }, status: 200
  end

  private

  def anagrams_params
    params.permit(:limit)
  end

end
