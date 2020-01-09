class ViewsController < ApplicationController
  before_action :authenticate_user!, only: [:mypage]
  def index
  end

  def about
  end

  def news
  end

  def mypage
  end
end
