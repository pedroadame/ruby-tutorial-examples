require_relative 'calculate_frequency'
require 'test/unit'

class TestCalculateFrequency < Test::Unit::TestCase

  def test_empty_list
    assert_equal({}, calculate_frequency([]))
  end
  def test_single_word
    assert_equal({"cat" => 1}, calculate_frequency(["cat"]))
  end
  def test_two_different_words
    assert_equal({"cat" => 1, "dog" => 1}, calculate_frequency(["cat","dog"]))
  end
  def test_two_words_with_adjacent_repeat
    assert_equal({"cat" => 2, "sat" => 1}, calculate_frequency(["cat","cat","sat"]))
  end
  def test_two_words_non_with_adjacent_repeat
    assert_equal({"cat" => 2, "sat" => 1}, calculate_frequency(["cat","sat","cat"]))
  end
end
