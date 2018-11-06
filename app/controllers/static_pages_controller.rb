class StaticPagesController < ApplicationController
  def home
  	@books = Book.order("created_at DESC")
  	@books = Book.all.page(params[:page]).per(15)
  end

  def help
  end
end
