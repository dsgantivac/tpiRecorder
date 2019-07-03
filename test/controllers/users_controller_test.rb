require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:one)
  end

  test "should get index" do
    get users_url
    assert_response :success
  end

  test "should get new" do
    get new_user_url
    assert_response :success
  end

  test "should create user" do
    assert_difference('User.count') do
      post users_url, params: { user: { age: @user.age, diastole: @user.diastole, email: @user.email, float: @user.float, heart_rate: @user.heart_rate, height: @user.height, lastname: @user.lastname, name: @user.name, sex: @user.sex, spo2: @user.spo2, systole: @user.systole, waist_perimeter: @user.waist_perimeter, weight: @user.weight } }
    end

    assert_redirected_to user_url(User.last)
  end

  test "should show user" do
    get user_url(@user)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_url(@user)
    assert_response :success
  end

  test "should update user" do
    patch user_url(@user), params: { user: { age: @user.age, diastole: @user.diastole, email: @user.email, float: @user.float, heart_rate: @user.heart_rate, height: @user.height, lastname: @user.lastname, name: @user.name, sex: @user.sex, spo2: @user.spo2, systole: @user.systole, waist_perimeter: @user.waist_perimeter, weight: @user.weight } }
    assert_redirected_to user_url(@user)
  end

  test "should destroy user" do
    assert_difference('User.count', -1) do
      delete user_url(@user)
    end

    assert_redirected_to users_url
  end
end
