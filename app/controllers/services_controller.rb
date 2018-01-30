class ServicesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_services, only: [:show, :edit, :update, :destroy]

  def index
    @services = Service.all
  end

  def show
    #@comment = @blog.comments.build
    #@comments = @blog.comments
    #Notification.find(params[:notification_id]).update(read: true) if params[:notification_id]
  end

  def new
    if params[:back]
      @services = Service.new(services_params)
    else
      @services = Service.new
    end
  end

  def create
    @services = Service.new(services_params)
    if @services.save
      redirect_to services_path, notice: "登録完了"
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @services.update(services_params)
      redirect_to services_path, notice: "更新完了"
    else
      render 'edit'
    end
  end

  def confirm
    @services = Service.new(services_params)
    render :new if @services.invalid?
  end

  def destroy
    @services.destroy
    redirect_to services_path, notice: "削除完了"
  end

  private
    def services_params
      params.require(:service).permit(:name)
    end

    def set_services
      @services = Service.find(params[:id])
    end
end

