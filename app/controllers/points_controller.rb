class PointsController < ApplicationController
  before_action :logged_in_user
  
  
  def new
    @point = Point.find_by!(params[:point_id])
    @total_amount = amount
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
