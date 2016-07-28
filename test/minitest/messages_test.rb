# coding: utf-8
require 'minitest/autorun'
require 'minitest/pride'

module ::TryRakeTestAllKinds; end

class ::TryRakeTestAllKinds::TryMinitest < ::Minitest::Test

  print 'ARGV='; p ARGV

  def test_it
    skip "Skipped on purpose"
    assert true
  end
end
