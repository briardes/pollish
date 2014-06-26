require 'test_helper'

class PollTest < ActiveSupport::TestCase
  test 'test that poll has an owner' do
    poll = polls(:one)
    assert_equal 'MyString', poll.owner
  end
  test 'test that poll has a number of choices' do
    poll = polls(:one)
    assert_equal 1, poll.choices
  end
  test 'test that poll has a question' do
    poll = polls(:one)
    assert_equal 'MyText', poll.question
  end
end
