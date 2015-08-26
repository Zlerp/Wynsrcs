class SourcesController < ApplicationController
  before_action :set_source, only: [:show, :edit, :update, :destroy,]


  def new
    @source = Source.new
  end

  def create
      @source = Source.new(source_params)
      @source.user_id = current_user
      if @source.save
        redirect_to sources_path
      else
        redirect_to new_source_path
      end

  end

  def edit
  end

  def show
  end

  def update
    if @source.update(source_params)
      redirect_to sources_path
    else
      redirect_to edit_source_path
    end
  end

  def destroy
    @source.destroy
    redirect_to sources_path
  end


  def index
    @sources = Source.all
  end

  private

  def set_source
    @source = Source.find(params[:id])
  end

  def source_params
    params.require(:source).permit(:link, :category, :tags, :user_id)
  end
end
