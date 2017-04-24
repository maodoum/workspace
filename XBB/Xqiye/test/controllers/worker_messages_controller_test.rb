require 'test_helper'

class WorkerMessagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @worker_message = worker_messages(:one)
  end

  test "should get index" do
    get worker_messages_url
    assert_response :success
  end

  test "should get new" do
    get new_worker_message_url
    assert_response :success
  end

  test "should create worker_message" do
    assert_difference('WorkerMessage.count') do
      post worker_messages_url, params: { worker_message: { S_01: @worker_message.S_01, S_o2: @worker_message.S_o2, academic: @worker_message.academic, age: @worker_message.age, birthday: @worker_message.birthday, delFlag: @worker_message.delFlag, factory_id: @worker_message.factory_id, region: @worker_message.region, role: @worker_message.role, sex: @worker_message.sex, worker_id: @worker_message.worker_id, worker_name: @worker_message.worker_name } }
    end

    assert_redirected_to worker_message_url(WorkerMessage.last)
  end

  test "should show worker_message" do
    get worker_message_url(@worker_message)
    assert_response :success
  end

  test "should get edit" do
    get edit_worker_message_url(@worker_message)
    assert_response :success
  end

  test "should update worker_message" do
    patch worker_message_url(@worker_message), params: { worker_message: { S_01: @worker_message.S_01, S_o2: @worker_message.S_o2, academic: @worker_message.academic, age: @worker_message.age, birthday: @worker_message.birthday, delFlag: @worker_message.delFlag, factory_id: @worker_message.factory_id, region: @worker_message.region, role: @worker_message.role, sex: @worker_message.sex, worker_id: @worker_message.worker_id, worker_name: @worker_message.worker_name } }
    assert_redirected_to worker_message_url(@worker_message)
  end

  test "should destroy worker_message" do
    assert_difference('WorkerMessage.count', -1) do
      delete worker_message_url(@worker_message)
    end

    assert_redirected_to worker_messages_url
  end
end
