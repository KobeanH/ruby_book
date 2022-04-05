require 'minitest/autorun'
require_relative '../lib/convert_hash_syntax'

class ConvertHashSyntaxTest < Minitest::Test
  def test_convert_hash_syntax
    old_syntax = <<~TEXT
    {
      :name => 'Alice',
      :age=>20,
      :gender  =>  :female
    }
    TEXT
    expected = <<~TEXT
    {
      name: 'Alice',
      age: 20,
      gender: :female
    }
  TEXT

    # assert_equal expected, convert_hash_syntax(old_syntax)

    actual = convert_hash_syntax(old_syntax)
    puts actual
    assert_equal expected, actual
  end
end
