require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase

  def setup
    @base_title = "MI CASA GUATAPE"
  end

  test "should get home" do
    get :home
    assert_response :success
    assert_select "title", "#{@base_title}"
  end

  test "should get rooms" do
    get :rooms
    assert_response :success
    assert_select "title", "Rooms and Prices | #{@base_title}"
  end

  test "should get where" do
    get :where
    assert_response :success
    assert_select "title", "Where are we? | #{@base_title}"
  end

  test "should get things" do
    get :things
    assert_response :success
    assert_select "title", "Things to do | #{@base_title}"
  end

  test "should get gallery" do
    get :gallery
    assert_response :success
    assert_select "title", "Gallery | #{@base_title}"
  end

  test "should get about" do
    get :about
    assert_response :success
    assert_select "title", "About us | #{@base_title}"
  end

  test "should get contact" do
    get :contact
    assert_response :success
    assert_select "title", "Contact | #{@base_title}"
  end

end
