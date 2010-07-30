require 'test_helper'

class MilestoneCategoriesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:milestone_categories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create milestone_category" do
    assert_difference('MilestoneCategory.count') do
      post :create, :milestone_category => { }
    end

    assert_redirected_to milestone_category_path(assigns(:milestone_category))
  end

  test "should show milestone_category" do
    get :show, :id => milestone_categories(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => milestone_categories(:one).to_param
    assert_response :success
  end

  test "should update milestone_category" do
    put :update, :id => milestone_categories(:one).to_param, :milestone_category => { }
    assert_redirected_to milestone_category_path(assigns(:milestone_category))
  end

  test "should destroy milestone_category" do
    assert_difference('MilestoneCategory.count', -1) do
      delete :destroy, :id => milestone_categories(:one).to_param
    end

    assert_redirected_to milestone_categories_path
  end
end
