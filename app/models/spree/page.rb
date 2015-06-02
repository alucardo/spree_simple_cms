class Spree::Page < ActiveRecord::Base
  alias_attribute :name, :title
  validates_presence_of :title
end
