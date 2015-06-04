class ListsController < ApplicationController
  before_action :find_list, only: [:show, :edit, :update, :destroy]

  def index
    render json: @lists = List.all
  end

  def show
  end

  def new
    @list = List.new
  end

  def create
    @list = List.new(permitted_params)
    @list.save
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