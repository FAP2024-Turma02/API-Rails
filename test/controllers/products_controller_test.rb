require 'test_helper'

class ProductsControllerTest < ActionDispatch::IntegrationTest
  setup do
    get products_url # ou a rota apropriada, por exemplo: get "/products"
    assert_response :success
    @data = JSON.parse(@response.body, symbolize_names: true)
  end

  test 'each product name should be a string' do
    @data.each do |product|
      assert product[:name].is_a?(String), "Expected :name to be a String, but got #{product[:name].class}"
    end
  end

  test 'each product name should not be empty' do
    @data.each do |product|
      assert !product[:name].empty?, 'Expected :name to not be empty'
    end
  end

  test 'each product photo should be a valid URL' do
    @data.each do |product|
      assert_match URI::DEFAULT_PARSER.make_regexp, product[:photo]
    end
  end

  test 'each product price should be a float' do
    @data.each do |product|
      assert product[:price].is_a?(Float), "Expected :price to be a Float, but got #{product[:price].class}"
    end
  end

  test 'each product is_promotion should be a boolean' do
    @data.each do |product|
      assert [true, false].include?(product[:is_promotion]),
             "Expected :is_promotion to be true or false, but got #{product[:is_promotion]}"
    end
  end
end
