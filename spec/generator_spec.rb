require 'generator'
require 'pp'

describe Generator do
  it "it generates 1 company for every 2 people" do
    number_of_people = 4
    people = Generator.new(number_of_people).generate
    expected = number_of_people/2
    actual = people.map { |person| person[2]}.uniq.length
    expect(actual).to eq expected
  end
  it "it generates 1 company for every 2 people, greater number" do
    number_of_people = 50
    people = Generator.new(number_of_people).generate
    expected = number_of_people/2
    actual = people.map { |person| person[2]}.uniq.length
    expect(actual).to eq expected
  end
end