# coding: utf-8

# http://stackoverflow.com/questions/13988125/how-to-skip-cucumber-steps
# https://www.relishapp.com/cucumber/cucumber/docs/defining-steps/skip-scenario

module ::TryRakeTestAllKinds; end

Given /skip/ do
  skip_this_scenario
end

Given /passes/ do
end
