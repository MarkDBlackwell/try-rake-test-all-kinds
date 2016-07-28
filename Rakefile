#!/usr/bin/env ruby
# coding: utf-8

require 'cucumber'
require 'cucumber/rake/task'
require 'rake/testtask'
require 'rspec/core/rake_task'

namespace :test do
  Rake::TestTask.new :common do |t|
    t.description = 'Run common tests'
    t.libs = ['.']
    files = FileList['test/common/**/*_test.rb']
    t.test_files = files
    t.verbose = true
    t.warning = true
  end

# See http://www.rubydoc.info/github/cucumber/cucumber-ruby/Cucumber/Rake/Task

  description = 'Run Cucumber features'
  Cucumber::Rake::Task.new :cucumber, description do |t|
    t.libs = ['.']
    t.fork = true # Default is `true`.
  end

=begin
  Rake::TestTask.new :cucumber do |t|
    t.description = 'Run Cucumber features'
    t.libs = ['.']
# Cucumber needs some other way to load its features:
#   files = FileList['features/**/*.feature']
    files = FileList[]
    t.test_files = files
    t.verbose = true
    t.warning = true
  end
=end

  Rake::TestTask.new :minitest do |t|
    t.description = 'Run Minitest tests'
    t.libs = ['.']
    files = FileList['test/minitest/**/*_test.rb']
    t.test_files = files
# print 'files='; p files
    t.verbose = true
    t.warning = true
#   loader = :direct
#   loader = :rake # Default.
#   loader = :testrb # Nonexistent.
#   t.loader = loader
# print 't.name, loader='; p "#{t.name}, #{loader}"
  end

  desc 'Run RSpec specifications'
    ::RSpec::Core::RakeTask.new(:rspec) do |t|
      files = FileList['spec/**/*_spec.rb']
      t.pattern = files
    end

  Rake::TestTask.new :'test-unit' do |t|
    t.description = 'Run Test::Unit tests'
    t.libs = ['.']
    files = FileList['test/test_unit/**/*_test.rb']
    t.test_files = files
    t.verbose = true
    t.warning = true
  end

  all = %i[ common  cucumber  minitest  rspec  test-unit ]
  task all: all

  desc "Run all tests but Test::Unit"
  task 'test-unit-not': all - %i[ test-unit ]
end

desc "Run all the kinds of tests"
task test: :'test:all'

task default: :test
