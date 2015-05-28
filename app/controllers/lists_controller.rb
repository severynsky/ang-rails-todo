class ListsController < ApplicationController
  before_action :find_list, only: [:show, :edit, :update, :destroy]

  def index
    @lists = List.all
  end

  def new
    @list = List.new
    respond_to do |format|
      # format.html{}
      format.js
    end
  end

  def create
    @list = List.new(permitted_params)

    respond_to do |format|
      if @list.save
        format.js { flash[:notice] = "task has been created!"}
        end
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

    respond_to do |format|

      if @list.destroy
        # format.html {redirect_to root_path, notice: "item has been deleted!" }
        format.js { flash[:notice] = "item was deleted"}
      end

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