require('rspec')
require('allergies')

describe('Fixnum#allergies') do
  it('tells what allergies a person has, based on their allergy score') do
    expect(10.allergies()).to(eq("You are allergic to peanuts and strawberries."))
  end
end
