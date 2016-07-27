# coding: utf-8
require 'test/unit'

Test::Unit::AutoRunner.need_auto_run = false

module ::TryRakeTestAllKinds; end

class ::TryRakeTestAllKinds::TryTestUnit < ::Test::Unit::TestCase

  print 'ARGV='; p ARGV

  def test_it
#   assert true
    assert false
  end
end

Test::Unit::AutoRunner.run
