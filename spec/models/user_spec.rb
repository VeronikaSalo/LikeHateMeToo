require 'spec_helper'

describe User do

  let!(:user) { FactoryGirl.create(:user) }

  subject { user }

  it { should be_valid }
  it { should respond_to(:email) }
  it { should respond_to(:name) }
  it { should respond_to(:first_name) }
  it { should respond_to(:last_name) }
  it { should respond_to(:photo) }
  it { should respond_to(:provider) }
  it { should respond_to(:uid) }
  it { should respond_to(:oauth_token) }
  it { should respond_to(:oauth_expires_at) }
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:email) }
end