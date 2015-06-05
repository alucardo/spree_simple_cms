class Spree::Page < ActiveRecord::Base
  alias_attribute :name, :title
  validates_presence_of :title
  validates_presence_of :slug

  def self.find_by_slug(slug)  
    page = self.find_by(slug: slug)  
    page = self.find_by(slug: slug[1..-1]) if page.blank?  
    page
  end
end
