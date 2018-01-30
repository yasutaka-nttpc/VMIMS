class EnvironmentsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_environments, only: [:show, :edit, :update, :destroy]

  def index
    @environments = Environment.all
  end

  def show
    #@comment = @blog.comments.build
    #@comments = @blog.comments
    #Notification.find(params[:notification_id]).update(read: true) if params[:notification_id]
  end

  def new
    if params[:back]
      @environments = Environment.new(environments_params)
    else
      @environments = Environment.new
    end
  end

  def create
    @environments = Environment.new(environments_params)
    if @environments.save
      redirect_to environments_path, notice: "登録完了"
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @environments.update(environments_params)
      redirect_to environments_path, notice: "更新完了"
    else
      render 'edit'
    end
  end

  def confirm
    @environments = Environment.new(environments_params)
    render :new if @environments.invalid?
  end

  def destroy
    @environments.destroy
    redirect_to environments_path, notice: "削除完了"
  end

  private
    def environments_params
      params.require(:environment).permit(:name)
    end

    def set_environments
      @environments = Environment.find(params[:id])
    end
end

