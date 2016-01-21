require 'test_helper'

class DispatchesControllerTest < ActionController::TestCase
  setup do
    @dispatch = dispatches(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dispatches)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dispatch" do
    assert_difference('Dispatch.count') do
      post :create, dispatch: { company: @dispatch.company, date: @dispatch.date, salesperson: @dispatch.salesperson, tax: @dispatch.tax }
    end

    assert_redirected_to dispatch_path(assigns(:dispatch))
  end

  test "should show dispatch" do
    get :show, id: @dispatch
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dispatch
    assert_response :success
  end

  test "should update dispatch" do
    patch :update, id: @dispatch, dispatch: { company: @dispatch.company, date: @dispatch.date, salesperson: @dispatch.salesperson, tax: @dispatch.tax }
    assert_redirected_to dispatch_path(assigns(:dispatch))
  end

  test "should destroy dispatch" do
    assert_difference('Dispatch.count', -1) do
      delete :destroy, id: @dispatch
    end

    assert_redirected_to dispatches_path
  end
end
