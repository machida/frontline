require 'spec_helper'

describe UsersController do

  # This should return the minimal set of attributes required to create a valid
  # User. As you add validations to User, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end
  
  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # UsersController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all users as @users" do
      user = User.create! valid_attributes
      get :index, {}, valid_session
      assigns(:users).should eq([user])
    end
  end

end
