class PointsController < ApplicationController
  before_action :logged_in_user
  
  def index
  end
  
  def create
  end
  

  def edit
  p "111111111111111111111"
    @point = Point.find_by!(params[:point_id])
  p "222222222222222222222"
    @total_amount = amount
  p "333333333333333333333"
    if total_amount >= 200
      user_point.amount = user_point.amount - total_amount
      flash[:success] = "#{user_point.amount}を使いました！！"
      #管理者のメアドに送る
      @user.save
      render 'new'
    else
      flash[:danger] = "ポイントは200pt以上で使えます！"
      render 'new'
    end
  end
  
  def index_histroy
    @index_point = Index_point.find(params[:created_at])
  end
end
