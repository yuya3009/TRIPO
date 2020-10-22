class PointsController < ApplicationController
  before_action :logged_in_user
  
  def index
  end
  
  def create
  end
  

  def edit
  p "111111111111111111111"
    @point = Point.find(params[:point_id])
  p "222222222222222222222"
    if point >= 200
       user.point = user.point - point
       flash[:success] = "#{user.point}を使いました！！"
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
