class BooksController < ApplicationController
  def index
    @Books = book.all
  end

  def show
  end

  def new
    @Books = book.new
  end

  def edit
  end
end
