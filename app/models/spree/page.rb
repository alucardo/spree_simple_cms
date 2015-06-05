class Spree::Page < ActiveRecord::Base
  alias_attribute :name, :title
  validates_presence_of :title

  def self.find_by_slug(slug)    
    slug.slice!(0) if slug[0] == '/'
    self.find_by(slug: slug) 
  end
end
