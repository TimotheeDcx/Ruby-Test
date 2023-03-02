require "test_helper"

class IanimalsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ianimal = ianimals(:one)
  end

  test "should get index" do
    get ianimals_url
    assert_response :success
  end

  test "should get new" do
    get new_pokemon_url
    assert_response :success
  end

  test "should create ianimal" do
    assert_difference("Ianimal.count") do
      post ianimals_url, params: { ianimal: { nompoke: @ianimal.nompoke, puissancepoke: @ianimal.puissancepoke, typepoke: @ianimal.typepoke } }
    end

    assert_redirected_to pokemon_url(Ianimal.last)
  end

  test "should show ianimal" do
    get pokemon_url(@ianimal)
    assert_response :success
  end

  test "should get edit" do
    get edit_pokemon_url(@ianimal)
    assert_response :success
  end

  test "should update ianimal" do
    patch pokemon_url(@ianimal), params: { ianimal: { nompoke: @ianimal.nompoke, puissancepoke: @ianimal.puissancepoke, typepoke: @ianimal.typepoke } }
    assert_redirected_to pokemon_url(@ianimal)
  end

  test "should destroy ianimal" do
    assert_difference("Ianimal.count", -1) do
      delete pokemon_url(@ianimal)
    end

    assert_redirected_to ianimals_url
  end
end
