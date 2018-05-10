class DrinksController < ApplicationController
  after_action :set_search

  @@search = nil

  def index
    if params[:search].nil? || params[:search].empty?
      @@search === nil ? @drink = Drink.random : @drink = Drink.search(@@search)
    else
      search = params[:search]
      @drink = Drink.search(search)
      @@search === nil
    end
  end

  def random
    @drink = Drink.random
  end

  def show
    @drinks = Drink.search_details(params[:details])
  end

  private

  def set_search
    unless params[:search].nil? || params[:search].empty?
      @@search = params[:search]
    end
  end

end
