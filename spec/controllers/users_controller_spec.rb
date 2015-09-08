require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  let(:valid_attributes) { { username: "WynUser",
                             email: "wynuser@example.com",
                             password: "password",
                             password_confirmation: "password" } }
  describe "GET index" do
    it "assigns @users" do
      user = User.create! valid_attributes
      get :index
      expect(assigns(:users)).to eq([user])
    end
  end

  it "renders the :index view" do
    get :index
    response.should render_template :index
  end
end
