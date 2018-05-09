require 'test_helper'

class Alipay2::UtilsTest < Minitest::Test
  def test_stringify_keys
    hash = { 'a' => 1, :b => 2 }
    assert_equal({ 'a' => 1, 'b' => 2 }.sort, Alipay2::Utils.stringify_keys(hash).sort)
  end

  def test_generate_batch_no
    assert_equal(24, Alipay2::Utils.generate_batch_no.size)
  end
end
