class InformationController < ApplicationController
  before_action :set_information, only: [:show, :edit, :update, :destroy]

  def index
    @information = Information.all
  end

  def show
    #@comment = @blog.comments.build
    #@comments = @blog.comments
    #Notification.find(params[:notification_id]).update(read: true) if params[:notification_id]
  end

  def new
    if params[:back]
      @information = Information.new(information_params)
    else
      @information = Information.new
    end
  end

  def create
    @information = Information.new(information_params)
    if @information.save
      redirect_to information_path, notice: "追加完了"
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @blog.update(blogs_params)
      redirect_to blogs_path, notice: "更新完了"
    else
      render 'edit'
    end
  end

  def destroy
    @information.destroy
    redirect_to information_path, notice: "削除完了"
  end

  private
    def information_params
      params.require(:information).permit(:title, :content)
    end

    def set_information
      @information = Information.find(params[:id])
    end
end
