require 'rails_helper'

RSpec.describe SourcesController, type: :controller do
  let(:valid_attributes) { { link: "Thislink.com",
                             category: "Ruby",
                             description: "blah",
                             tags: "ruby rails" } }
  describe "GET index" do
    it "assigns @sources" do
      source = Source.create! valid_attributes
      get :index
      expect(assigns(:sources)).to eq([source])
    end
  end

  it "renders the :index view" do
    get :index
    response.should render_template :index
  end
end
