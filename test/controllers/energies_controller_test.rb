require 'test_helper'

class EnergiesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get energies_index_url
    assert_response :success
  end

  test "should get import" do
    get energies_import_url
    assert_response :success
  end

end
