class GroupsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_groups, only: [:show, :edit, :update, :destroy]

  def index
    @groups = Group.all
  end

  def show
    #@comment = @blog.comments.build
    #@comments = @blog.comments
    #Notification.find(params[:notification_id]).update(read: true) if params[:notification_id]
  end

  def new
    if params[:back]
      @groups = Group.new(groups_params)
    else
      @groups = Group.new
    end
  end

  def create
    @groups = Group.new(groups_params)
    if @groups.save
      redirect_to groups_path, notice: "登録完了"
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @groups.update(groups_params)
      redirect_to groups_path, notice: "更新完了"
    else
      render 'edit'
    end
  end

  def confirm
    @groups = Group.new(groups_params)
    render :new if @groups.invalid?
  end

  def destroy
    @groups.destroy
    redirect_to groups_path, notice: "削除完了"
  end

  private
    def groups_params
      params.require(:group).permit(:name)
    end

    def set_groups
      @groups = Group.find(params[:id])
    end
end

