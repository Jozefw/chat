class PagesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_page, only: [:show, :edit, :update, :destroy]

  def index
    @pages = Page.all
    @pages = Page.order(:post).page params[:page]
  end

  def new
    @page = Page.new
  end

  def create
    @page = Page.new(page_params)
    if @page.save 
      redirect_to root_path
    else
      redirect_to new_page_path
    end
  end

  def edit
  end

  def update
    @page.update(page_params)
    redirect_to root_path
  end

  def destroy
    @page.destroy
    redirect_to root_path
    
  end

private
def set_page
  @page = Page.find(params[:id])
end

def page_params
  params.require(:page).permit(:post, :comment)
end


end
