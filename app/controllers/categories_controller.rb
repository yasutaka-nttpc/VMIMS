class CategoriesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_categories, only: [:show, :edit, :update, :destroy]

  def index
    @categories = Category.all
  end

  def show
    #@comment = @blog.comments.build
    #@comments = @blog.comments
    #Notification.find(params[:notification_id]).update(read: true) if params[:notification_id]
  end

  def new
    if params[:back]
      @categories = Category.new(categories_params)
    else
      @categories = Category.new
    end
  end

  def create
    @categories = Category.new(categories_params)
    if @categories.save
      redirect_to categories_path, notice: "登録完了"
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @categories.update(categories_params)
      redirect_to categories_path, notice: "更新完了"
    else
      render 'edit'
    end
  end

  def confirm
    @categories = Category.new(categories_params)
    render :new if @categories.invalid?
  end

  def destroy
    @categories.destroy
    redirect_to categories_path, notice: "削除完了"
  end

  private
    def categories_params
      params.require(:category).permit(:name)
    end

    def set_categories
      @categories = Category.find(params[:id])
    end
end

