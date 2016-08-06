require 'test_helper'

module MReservation
  class ResourcesControllerTest < ActionController::TestCase
    setup do
      @resource = m_reservation_resources(:one)
      @routes = Engine.routes
    end

    test "should get index" do
      get :index
      assert_response :success
      assert_not_nil assigns(:resources)
    end

    test "should get new" do
      get :new
      assert_response :success
    end

    test "should create resource" do
      assert_difference('Resource.count') do
        post :create, resource: { name: @resource.name }
      end

      assert_redirected_to resource_path(assigns(:resource))
    end

    test "should show resource" do
      get :show, id: @resource
      assert_response :success
    end

    test "should get edit" do
      get :edit, id: @resource
      assert_response :success
    end

    test "should update resource" do
      patch :update, id: @resource, resource: { name: @resource.name }
      assert_redirected_to resource_path(assigns(:resource))
    end

    test "should destroy resource" do
      assert_difference('Resource.count', -1) do
        delete :destroy, id: @resource
      end

      assert_redirected_to resources_path
    end
  end
end
