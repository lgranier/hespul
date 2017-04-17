require 'test_helper'

class OnduleurEnergyControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get onduleur_energy_index_url
    assert_response :success
  end

  test "should get import" do
    get onduleur_energy_import_url
    assert_response :success
  end

end
