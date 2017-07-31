require 'test_helper'

class StaticsControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end

  test "new product page" do
  	get statics_new_url
  	assert_response :success
  end

end
