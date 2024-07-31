require 'test_helper'

class InfosControllerTest < ActionDispatch::IntegrationTest
  setup do
    get info_url # ou a rota apropriada, por exemplo: get "/info"
    assert_response :success
    @data = JSON.parse(@response.body, symbolize_names: true)
  end

  test 'keys should match expected format' do
    expected_keys = %i[name owner color department]
    actual_keys = @data.keys
    assert_equal Set.new(expected_keys), Set.new(actual_keys)
  end

  test 'name should be a string' do
    assert @data[:name].is_a?(String)
  end

  test 'name should not be empty' do
    assert !@data[:name].empty?
  end

  test 'color should be a string' do
    assert @data[:color].is_a?(String)
  end

  test 'color should be a valid hexadecimal' do
    assert_match(/^#(?:[0-9a-fA-F]{3}){1,2}$/, @data[:color])
  end

  test 'owner should be a string' do
    assert @data[:owner].is_a?(String)
  end

  test 'owner should not be empty' do
    assert !@data[:owner].empty?
  end

  test 'department should be a string' do
    assert @data[:department].is_a?(String)
  end

  test 'department should not be empty' do
    assert !@data[:department].empty?
  end
end
