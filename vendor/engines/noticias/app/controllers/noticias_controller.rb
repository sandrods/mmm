class NoticiasController < ApplicationController

  before_filter :find_all_noticias
  before_filter :find_page

  def index
    # you can use meta fields from your model instead (e.g. browser_title)
    # by swapping @page for @noticia in the line below:
    present(@page)
  end

  def show
    @noticia = Noticia.find(params[:id])

    # you can use meta fields from your model instead (e.g. browser_title)
    # by swapping @page for @noticia in the line below:
    present(@page)
  end

protected

  def find_all_noticias
    @noticias = Noticia.order('position ASC')
  end

  def find_page
    @page = Page.where(:link_url => "/noticias").first
  end

end
