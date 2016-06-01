require 'test_helper'

class MotionsControllerTest < ActionController::TestCase
  setup do
    @motion = motions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:motions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create motion" do
    assert_difference('Motion.count') do
      post :create, motion: { actor: @motion.actor, attribute_1: @motion.attribute_1, attribute_2: @motion.attribute_2, attribute_3: @motion.attribute_3, attribute_4: @motion.attribute_4, attribute_5: @motion.attribute_5, bvh_file: @motion.bvh_file, c3d_file: @motion.c3d_file, mood: @motion.mood, role: @motion.role }
    end

    assert_redirected_to motion_path(assigns(:motion))
  end

  test "should show motion" do
    get :show, id: @motion
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @motion
    assert_response :success
  end

  test "should update motion" do
    patch :update, id: @motion, motion: { actor: @motion.actor, attribute_1: @motion.attribute_1, attribute_2: @motion.attribute_2, attribute_3: @motion.attribute_3, attribute_4: @motion.attribute_4, attribute_5: @motion.attribute_5, bvh_file: @motion.bvh_file, c3d_file: @motion.c3d_file, mood: @motion.mood, role: @motion.role }
    assert_redirected_to motion_path(assigns(:motion))
  end

  test "should destroy motion" do
    assert_difference('Motion.count', -1) do
      delete :destroy, id: @motion
    end

    assert_redirected_to motions_path
  end
end
