require 'rails_helper'

describe UsersController do

  let!(:user) { FactoryGirl.create(:user) }

  describe 'GET #index' do

    before do
      get :index
    end

    it 'assigns requested user to users' do
      expect(assigns(:users)).to eq([user])
    end

    it 'render the :index template' do
      expect(response).to render_template :index
    end
  end

  describe 'GET #show' do

    before do
      get :show, id: user
    end

    it 'assigns requested user to user' do
      expect(assigns(:user)).to eq(user)
    end

    it 'render the :show template' do
      expect(response).to render_template :show
    end
  end

  describe 'GET #edit' do

    before do
      get :edit, id: user
    end

    it 'assigns requested user to user' do
      expect(assigns(:user)).to eq(user)
    end

    it 'render the :edit template' do
      expect(response).to render_template :edit
    end
  end

  describe 'PATCH #update' do

    before do
      patch :update, id: user, user: { name: 'New name' }
    end

    it 'assigns the requested user to user' do
      expect(assigns(:user)).to eq(user)
    end

    it 'change user attr' do
      user.reload
      expect(user.name).to eq('New name')
    end

    it 'redirect to user_path' do
      expect(response).to redirect_to user_path
    end
  end
end