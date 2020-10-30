class PointsController < ApplicationController
  before_action :logged_in_user
  
  def index
    @points =Point.all
  end
  
  def new
    @point = Point.new
  end
  
  def create
    @point = Point.find(params[:id])
    if point >= 200
       user.point = user.point - point
       flash[:success] = "#{user.point}を使いました！！"
       #管理者のメアドに送る
       @point.save
       redirect to points_url
    else
       flash[:danger] = "ポイントは200pt以上で使えます！"
       redirect to points_url
    end
  end
  

  def edit
  end
  
  private
  
  def index_histroy
    @index_point = Index_point.find(params[:created_at])
  end
end
