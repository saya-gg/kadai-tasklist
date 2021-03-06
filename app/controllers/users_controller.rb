class UsersController < ApplicationController
  before_action :require_user_logged_in, only: [:index, :show]
  
  
  def index
    @users = User.order(id: :desc)
  end

  def show
    @user = User.find(params[:id])
  end

  def new
  end

  def create
  end
end
