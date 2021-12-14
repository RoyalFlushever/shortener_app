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

  def show
    link = Link.find_short(params[:slug])
    if link
      link.update(visits: link.visits + 1)
      redirect_to link.url
    else
      flash[:errors] = ['Link not found']
      redirect_to :root
    end
  end

  def top_links
    @links = Link.order(visits: :desc).limit(100)
  end
  
  private

  def link_params
    params.require(:link).permit(:url)
  end
end
