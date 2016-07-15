require 'test_helper'

class IntroductionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "introduction attributes must not be empty" do
    introduction = Introduction.new
    assert introduction.invalid?
    assert introduction.errors[:title].any?
    assert introduction.errors[:description].any?
    assert introduction.errors[:image_url].any?
  end

  test "introduction must be positive" do
    introduction = Introduction.new(title: "Reading",
                               description: 'yy',
                               image_url: 'zzz.jpg')
  end
  
end
