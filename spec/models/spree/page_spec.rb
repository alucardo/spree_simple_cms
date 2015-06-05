require 'spec_helper'

RSpec.describe Spree::Page, type: :model do
  it { should validate_presence_of(:title) }
  it { should validate_presence_of(:slug) }

  describe "#find_by_slug" do 
    context "when path starts with /" do 
      let(:slug) {'/test-page'}
      let!(:page) { Spree::Page.create(title: "test page", slug: slug) }
      it "returns page" do 
        expect(Spree::Page.find_by_slug('/test-page')).to eq(page)
      end
    end

    context "when path do not start with /" do 
      let(:slug) {'test-page'}
      let!(:page) { Spree::Page.create(title: "test page", slug: slug) }
      it "return page" do
        expect(Spree::Page.find_by_slug('/test-page')).to eq(page)
      end
    end
  end
end
