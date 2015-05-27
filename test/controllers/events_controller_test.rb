require 'test_helper'

class EventsControllerTest < ActionController::TestCase
  setup do
    @event = events(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:events)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create event" do
    assert_difference('Event.count') do
      post :create, event: { account_id: @event.account_id, capacity: @event.capacity, category_id: @event.category_id, description: @event.description, end_time: @event.end_time, is_free: @event.is_free, latitude: @event.latitude, location: @event.location, longitude: @event.longitude, name: @event.name, public: @event.public, sold_out: @event.sold_out, start_time: @event.start_time }
    end

    assert_redirected_to event_path(assigns(:event))
  end

  test "should show event" do
    get :show, id: @event
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @event
    assert_response :success
  end

  test "should update event" do
    patch :update, id: @event, event: { account_id: @event.account_id, capacity: @event.capacity, category_id: @event.category_id, description: @event.description, end_time: @event.end_time, is_free: @event.is_free, latitude: @event.latitude, location: @event.location, longitude: @event.longitude, name: @event.name, public: @event.public, sold_out: @event.sold_out, start_time: @event.start_time }
    assert_redirected_to event_path(assigns(:event))
  end

  test "should destroy event" do
    assert_difference('Event.count', -1) do
      delete :destroy, id: @event
    end

    assert_redirected_to events_path
  end
end
