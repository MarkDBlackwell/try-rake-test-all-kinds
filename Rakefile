#!/usr/bin/env ruby
# coding: utf-8

require 'rake/testtask'

=begin
  Of interest:
http://www.jonathanleighton.com/articles/2012/stop-test-unit-autorun/
=end

#   Top-level gems needed:
# cucumber
# minitest
# rspec-core
# test-unit

namespace :test do
  Rake::TestTask.new :common do |t|
    t.libs = ['.']
    t.test_files = FileList['test/common/**/*_test.rb']
    t.verbose = true
    t.warning = true
  end

  desc "Run Cucumber features"
  Rake::TestTask.new :cucumber do |t|
    t.libs = ['.']
    t.test_files = FileList['features/**/*.feature']
    t.verbose = true
    t.warning = true
  end

  desc "Run Minitest tests"
  Rake::TestTask.new :minitest do |t|
    t.libs = ['.']
    t.test_files = FileList['test/minitest/**/*_test.rb']
    t.verbose = true
    t.warning = true
  end

  desc "Run Rspec specifications"
  Rake::TestTask.new :rspec do |t|
    t.libs = ['.']
    t.test_files = FileList['spec/**/*_spec.rb']
    t.verbose = true
    t.warning = true
  end

  desc "Run Test-Unit tests"
  Rake::TestTask.new :test_unit do |t|
    t.libs = ['.']
    files = FileList['test/test_unit/**/*_test.rb']
# print 'files='; p files
    t.test_files = files
    t.verbose = true
    t.warning = true
#   loader = :testrb  # Nonexistent.
#   loader = :direct
    loader = :rake
print 'loader='; p loader
    t.loader = loader
  end

  task all: %i[ common  cucumber  minitest  rspec  test_unit ]

  desc "Run all tests but Test_Unit"
  task test_unit_not: %i[ common  cucumber  minitest  rspec  test_unit ] - %i[ test_unit ]
end

desc "Run all the kinds of tests"
task test: :'test:all'

task default: :test
