class StaticPagesController < ApplicationController
  def home
  	@books = Book.all
  	@user = current_user
  end

  def help
  end
end
