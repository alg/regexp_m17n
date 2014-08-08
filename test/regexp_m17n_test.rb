# encoding: utf-8
require 'minitest/autorun'
require_relative '../lib/regexp_m17n'

class RegexpTest < MiniTest::Unit::TestCase
  def test_non_empty_string
    Encoding.list.each do |enc|
      # 'encoding' should be replaced with 'force_encoding' to
      # make test work with ISO-2022-JP-2 (dummy) encoding.
      # There's no UTF-8 to ISO-2022-JP-2 converter.
      assert(RegexpM17N.non_empty?('.'.force_encoding(enc)))
    end
  end
end
