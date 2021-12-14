class LinksController < ApplicationController
  def index; end

  def create
    link = Link.new(link_params)
    if link.save
      flash[:short] = root_url + link.short
    else
      flash[:errors] = link.errors.full_messages
    end
    redirect_to :root
  end
  
  private

  def link_params
    params.require(:link).permit(:url)
  end
end
