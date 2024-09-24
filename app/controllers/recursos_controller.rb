class RecursosController < ApplicationController
  # before_action :authenticate_admin!, only: [:new, :create, :edit, :update, :destroy]
  before_action :set_resource, only: [:show, :edit, :update, :destroy]

  def index
    @categories = Category.all

    if params[:category_id].present?
      # @category = Category.find(params[:category_id])
      # @recursos = @category.recursos
      @recursos = Recurso.where(category_id: params[category_id])
    else
      @recursos = Recurso.all
    end

    if params[:query].present?
      @recursos = @recursos.where("titulo LIKE ?", "%#{params[:query].downcase}%")
    end
  end

  def show
    @recurso = Recurso.find(params[:id])
  end

  def new
    @recurso = Recurso.new
  end

  def create
    @recurso = Recurso.create(resource_params)
    if @recurso.save
      redirect_to @recurso, notice: "Resource created succssfully"
    else
      render :new
    end
  end

  def update
    if @recurso.update(resource_params)
      redirect_to @recurso, notice: "Resource updated succssfully"
    else
      render :edit
    end
  end

  def destroy
    @recurso.destroy
    redirect_to recursos_path, notice: "Resource deleted succssfully"
  end

  private

  def resource_params
    params.require(:recurso).permit(:titulo, :url, :descripcion, :category_id, :image)
  end

  def set_resource
    @recurso = Recurso.find(params[:id])
  end

  # def authenticate_admin!
  #   redirect_to root_path unless current_user.admin?
  # end
end
