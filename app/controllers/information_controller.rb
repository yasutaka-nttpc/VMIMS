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
      redirect_to information_index_path, notice: "追加完了"
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @information.update(information_params)
      redirect_to information_index_path, notice: "更新完了"
    else
      render 'edit'
    end
  end

  def destroy
    @information.destroy
    redirect_to information_index_path, notice: "削除完了"
  end

  private
    def information_params
      params.require(:information).permit(:group, :service, :category, :environment, :name, :serial, :server_name, :support_contact, :support_contact_period, :support_id, :hard_support_conditions, :hard_contact_tel, :hard_contact_mail, :hard_contact_other, :soft_support_conditions, :soft_contact_tel, :soft_contact_mail, :soft_contact_other, :os_version, :eos_hard, :eos_soft, :sales_contact, :sales_contact_tel, :sales_contact_mail, :remarks_1, :remarks_2, :remarks_3, :non_alert_flag)
    end

    def set_information
      @information = Information.find(params[:id])
    end
end
