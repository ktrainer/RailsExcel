require 'test_helper'

class MyCoffeesControllerTest < ActionController::TestCase
  setup do
    @my_coffee = my_coffees(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:my_coffees)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create my_coffee" do
    assert_difference('MyCoffee.count') do
      post :create, my_coffee: { ground: @my_coffee.ground, name: @my_coffee.name, notes: @my_coffee.notes, origin: @my_coffee.origin, roast: @my_coffee.roast }
    end

    assert_redirected_to my_coffee_path(assigns(:my_coffee))
  end

  test "should show my_coffee" do
    get :show, id: @my_coffee
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @my_coffee
    assert_response :success
  end

  test "should update my_coffee" do
    patch :update, id: @my_coffee, my_coffee: { ground: @my_coffee.ground, name: @my_coffee.name, notes: @my_coffee.notes, origin: @my_coffee.origin, roast: @my_coffee.roast }
    assert_redirected_to my_coffee_path(assigns(:my_coffee))
  end

  test "should destroy my_coffee" do
    assert_difference('MyCoffee.count', -1) do
      delete :destroy, id: @my_coffee
    end

    assert_redirected_to my_coffees_path
  end
end
