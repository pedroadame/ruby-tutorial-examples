require_relative 'words_in_string'
require 'test/unit'

class TestWordsInString < Test::Unit::TestCase

  def test_empty_string
    assert_equal([], words_in_string(""))
    assert_equal([], words_in_string("   "))
  end

  def test_single_word
    assert_equal(["cat"], words_in_string("cat"))
    assert_equal(["cat"], words_in_string("   cat   "))
  end
  
  def test_many_words
    assert_equal(%w{cat dog pie}, words_in_string("cat dog pie"))
  end
  def test_ignores_punctuation
    assert_equal(["the", "cat's", "mat"], words_in_string("<the!> cat's, -mat-"))
  end
end
