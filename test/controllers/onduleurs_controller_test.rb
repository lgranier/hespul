require 'test_helper'

class OnduleursControllerTest < ActionDispatch::IntegrationTest
  setup do
    @onduleur = onduleurs(:one)
  end

  test "should get index" do
    get onduleurs_url
    assert_response :success
  end

  test "should get new" do
    get new_onduleur_url
    assert_response :success
  end

  test "should create onduleur" do
    assert_difference('Onduleur.count') do
      post onduleurs_url, params: { onduleur: { description: @onduleur.description, lb: @onduleur.lb } }
    end

    assert_redirected_to onduleur_url(Onduleur.last)
  end

  test "should show onduleur" do
    get onduleur_url(@onduleur)
    assert_response :success
  end

  test "should get edit" do
    get edit_onduleur_url(@onduleur)
    assert_response :success
  end

  test "should update onduleur" do
    patch onduleur_url(@onduleur), params: { onduleur: { description: @onduleur.description, lb: @onduleur.lb } }
    assert_redirected_to onduleur_url(@onduleur)
  end

  test "should destroy onduleur" do
    assert_difference('Onduleur.count', -1) do
      delete onduleur_url(@onduleur)
    end

    assert_redirected_to onduleurs_url
  end
end
