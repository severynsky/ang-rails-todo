class ListsController < ApplicationController
  before_action :find_list, only: [:show, :edit, :update, :destroy]

  def index
    @lists = List.all
  end

  def new
    @list = List.new
  end

  def create
    @list = List.new(permitted_params)
    if @list.save
      redirect_to root_path, notice: "task has been created!"
    end
  end

  def edit
  end

  def update
    # binding.pry
    if @list.update(permitted_params)
      redirect_to root_path, notice: "task has been udpated!"
    end
  end

  def destroy
    if @list.destroy
      flash[:notice] =  "item has been deleted!"
      redirect_to root_path
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