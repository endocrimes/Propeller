require 'test_helper'

class Api::V1::DevicesControllerTest < ActionController::TestCase
  
  def setup
    @controller = Api::V1::DevicesController.new
  end

  test "devices#index returns a response" do
    get :index, {format: :json}
    assert_response :success
  end

  test "devices#create without arguments returns an error 400" do
    post :create, {format: :json}
    assert_response 400
  end

end
