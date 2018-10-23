class StaticPagesController < ApplicationController
  def home
  	@books = Book.order("created_at DESC")
  end

  def help
  end
end
