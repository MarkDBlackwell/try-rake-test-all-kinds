#!/usr/bin/env ruby
# coding: utf-8

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
  task all: %i[ common  cucumber  minitest  rspec  test_unit ]

  task :common do
    require 'rake/testtask'
    Rake::TestTask.new :common do |t|
      announce t
      t.test_files = FileList['test/common/**/*_test.rb']
      t.verbose = true
      t.warning = true
    end
  end

  desc "Run Cucumber features"
  task :cucumber do
    require 'rake/testtask'
    Rake::TestTask.new :cucumber do |t|
      announce t
      t.test_files = FileList['features/**/*.feature']
      t.verbose = true
      t.warning = true
    end
  end

  desc "Run Minitest tests"
  task :minitest do
    require 'rake/testtask'
    Rake::TestTask.new :minitest do |t|
      announce t
      t.test_files = FileList['test/minitest/**/*_test.rb']
      t.verbose = true
      t.warning = true
    end
  end

  desc "Run Rspec specifications"
  task :rspec do
    require 'rake/testtask'
    Rake::TestTask.new :rspec do |t|
      announce t
      t.test_files = FileList['spec/**/*_spec.rb']
      t.verbose = true
      t.warning = true
    end
  end

  desc "Run Test-Unit tests"
  task :test_unit do
    require 'rake/testtask'
    require 'test/unit'
    Rake::TestTask.new :test_unit do |t|
      announce t
      t.test_files = FileList['test/test_unit/**/*_test.rb']
      t.verbose = true
      t.warning = true
    end
  end

  desc "Run all tests but Test-Unit"
  task test_unit_not: %i[ common  cucumber  minitest  rspec  test_unit ] - %i[ test_unit ]
end

desc "Run all the kinds of tests"
task test: :'test:all'

task default: :test

def announce(task=nil) puts "Starting task :'#{task.name}'" end
