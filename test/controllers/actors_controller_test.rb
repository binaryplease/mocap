require 'test_helper'

class ActorsControllerTest < ActionController::TestCase
  setup do
    @actor = actors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:actors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create actor" do
    assert_difference('Actor.count') do
      post :create, actor: { body_depth: @actor.body_depth, body_height: @actor.body_height, chest_girth: @actor.chest_girth, elbow_wrist_length: @actor.elbow_wrist_length, gender: @actor.gender, hip_width: @actor.hip_width, inner_leg_length: @actor.inner_leg_length, name: @actor.name, seat_height: @actor.seat_height, shoulder_elbow_length: @actor.shoulder_elbow_length, shoulder_height: @actor.shoulder_height, shoulder_width: @actor.shoulder_width, thigh_girth: @actor.thigh_girth, tibia_length: @actor.tibia_length, waist_girth: @actor.waist_girth, weight: @actor.weight }
    end

    assert_redirected_to actor_path(assigns(:actor))
  end

  test "should show actor" do
    get :show, id: @actor
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @actor
    assert_response :success
  end

  test "should update actor" do
    patch :update, id: @actor, actor: { body_depth: @actor.body_depth, body_height: @actor.body_height, chest_girth: @actor.chest_girth, elbow_wrist_length: @actor.elbow_wrist_length, gender: @actor.gender, hip_width: @actor.hip_width, inner_leg_length: @actor.inner_leg_length, name: @actor.name, seat_height: @actor.seat_height, shoulder_elbow_length: @actor.shoulder_elbow_length, shoulder_height: @actor.shoulder_height, shoulder_width: @actor.shoulder_width, thigh_girth: @actor.thigh_girth, tibia_length: @actor.tibia_length, waist_girth: @actor.waist_girth, weight: @actor.weight }
    assert_redirected_to actor_path(assigns(:actor))
  end

  test "should destroy actor" do
    assert_difference('Actor.count', -1) do
      delete :destroy, id: @actor
    end

    assert_redirected_to actors_path
  end
end
