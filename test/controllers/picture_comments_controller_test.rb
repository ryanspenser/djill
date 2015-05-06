require 'test_helper'

class PictureCommentsControllerTest < ActionController::TestCase
  setup do
    @picture_comment = picture_comments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:picture_comments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create picture_comment" do
    assert_difference('PictureComment.count') do
      post :create, picture_comment: { comment: @picture_comment.comment }
    end

    assert_redirected_to picture_comment_path(assigns(:picture_comment))
  end

  test "should show picture_comment" do
    get :show, id: @picture_comment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @picture_comment
    assert_response :success
  end

  test "should update picture_comment" do
    patch :update, id: @picture_comment, picture_comment: { comment: @picture_comment.comment }
    assert_redirected_to picture_comment_path(assigns(:picture_comment))
  end

  test "should destroy picture_comment" do
    assert_difference('PictureComment.count', -1) do
      delete :destroy, id: @picture_comment
    end

    assert_redirected_to picture_comments_path
  end
end
