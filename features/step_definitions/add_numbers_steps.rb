Given /^addition string "(.*?)"$/ do |input|
  @input = input
end

When /^I run calculator script$/ do
  @output = `ruby calculator.rb #{@input}`
  raise('Command failed') unless $?.success?
end

Then /^I should receive "(.*?)"$/ do |output|
  @output.should eq(output)
end
