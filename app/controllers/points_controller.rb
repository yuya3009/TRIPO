class PointsController < ApplicationController
  before_action :logged_in_user
  
  def index
    @user_point =Amount.all
    @point_histroies = Point_histroy.select("amount")
  end

  def new
    @user_points = Amount.new
  end
  
  def create
    @point = Amount.find(params[:amount])
    _total_amount = @amount
    if _total_amount >= 200 || user_point.amount >= _total_amount
       user_point.amount = user_point.amount - _total_amount
       flash[:success] = "#{user_point.amount}を使いました！！"
       #管理者のメアドに送る
       @user_point.save
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
