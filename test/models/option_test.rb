require 'test_helper'

class OptionTest < ActiveSupport::TestCase
  test 'test that option has an answer' do
    option = options(:one)
    assert_equal 'MyString', option.answer
  end

  test 'test that option has a count' do
    option = options(:one)
    assert_equal 1, option.count
  end
end
