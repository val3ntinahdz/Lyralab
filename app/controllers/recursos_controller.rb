class RecursosController < ApplicationController
  # before_action :authenticate_admin!, only: [:new, :create, :edit, :update, :destroy]
  before_action :set_resource, only: [:show, :edit, :update, :destroy]

  def index
    @categories = Category.all
    @steam_areas = %w[ Ciencia Tecnología Ingeniería Arte Matemáticas ]

    if params[:category_id].present? &&
      @resources = Recurso.where(category_id: params[category_id])
    else
      @resources = Recurso.all
    end

    if params[:query].present?
      @resources = @resources.where("titulo LIKE ?", "%#{params[:query].downcase}%")
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
    params.require(:recurso).permit(:titulo, :url, :descripcion, :steam_area, :category_id, :image, :resource_type)
  end

  def set_resource
    @recurso = Recurso.find(params[:id])
  end

  # def authenticate_admin!
  #   redirect_to root_path unless current_user.admin?
  # end
end
