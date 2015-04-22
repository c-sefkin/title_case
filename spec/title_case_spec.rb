require('rspec')
require('title_case')

describe('String#title_case') do
  it("capitalizes the first letter of a word") do
  expect(("beowolf").title_case()).to(eq("Beowolf"))
end

it("capitalizes multiple word titles") do
  expect(("beowolf begins").title_case()).to(eq("Beowolf Begins"))
end

it("does not capitalize designated words that are after the first word") do
  expect(("from beowolf to the incredible hulk").title_case()).to(eq("From Beowolf to the Incredible Hulk"))
end

it("handles mixed case entries") do
  expect(("This old beoWolf").title_case()).to(eq("This Old Beowolf"))
end
end
