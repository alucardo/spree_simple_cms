class Spree::PagesController < Spree::BaseController

  def show
    @page = Spree::Page.find_by_slug(request.path)
  end

  private

 def accurate_title
      @page.meta_title
 end

end