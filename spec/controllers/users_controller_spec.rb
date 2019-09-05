require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  describe 'GET #new' do
    it 'returns a success response' do
      get :new
      expect(response).to be_success
    end
  end

  describe 'GET #show' do
    it "returns a success response" do
      user = User.create!(first_name: 'Bob', surname: 'Bear', email: 'bob@bear.com', password: 'bobby')
      session[:user_id] = user.id
      get :show, params: { id: user.to_param}
      expect(response).to be_success
    end
  end

end