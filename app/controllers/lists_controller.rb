class ListsController < ApplicationController
  before_action :find_list, only: [:show, :edit, :update, :destroy]
  def index
    @lists = List.all
    # respond_to :json
    # render json: @lists
  end

  def show
    @task = List.find(params[:id])
    # render json: @task
  end

  # def new
  #   @list = List.new
  #   respond_with(@list)
  # end

  def create
    @list = List.new(permitted_params)
    if @list.save
      render json: @list
    else
      render json: @list.errors
    end
  end

  def edit
  end

  def update
      binding.pry
    if @list.update(permitted_params)
      render json: @list
    end
  end

  def destroy
      if @list.destroy
        render json: @list
        flash[:notice] = "item was deleted"
      end
  end

  private

  def permitted_params
    params.require(:list).permit(:body)
  end

  def find_list
    @list = List.find(params[:id])
  end

end