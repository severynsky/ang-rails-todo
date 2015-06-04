class ListsController < ApplicationController
  before_action :find_list, only: [:show, :edit, :update, :destroy]
  def index
    render json: @lists = List.all
  end

  def show
    @list = List.find(params[:id])
    # respond_to :json
    render json: @list
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
    if @list.update(permitted_params)
      redirect_to root_path, notice: "task has been udpated!"
    end
  end

  def destroy
      if @list.destroy
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