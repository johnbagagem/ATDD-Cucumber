Given /^division string "(.*?)"$/ do |input|
  @input = input
end

When /^I try to divide by 0$/ do
   @input = "100/0"
end

Then /^the calculator script should fail$/ do
  @output = `ruby calculator.rb #{@input}`
  if $?.success?
     raise('command failed')
  end
end

Then /^return "(.*?)" as an output$/ do |output|
  @output.should eq(output) 
end


