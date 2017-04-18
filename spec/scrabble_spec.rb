require('rspec')
require('scrabble')

describe("String#scrabble") do
  it("returns a scrabble score for a letter") do
  expect("a".scrabble()).to(eq(1))
  end

  it("returns a scrabble score for any letter that is 1 point") do
    expect("star".scrabble()).to(eq(4))
  end
  it("returns a scrabble score for any letter that is 2 points") do
    expect("dog".scrabble()).to(eq(5))
  end
  it("returns a scrabble score for any letter that is 3 points") do
    expect("bcmp".scrabble()).to(eq(12))
  end
  it("returns a scrabble score for any letter that is 4 points") do
    expect("fh".scrabble()).to(eq(8))
  end
  it("returns a scrabble score for any letter that is 5 points") do
    expect("k".scrabble()).to(eq(5))
  end
  it("returns a scrabble score for any letter that is 8 points") do
    expect("x".scrabble()).to(eq(8))
  end
  it("returns a scrabble score for any letter that is 10 points") do
    expect("z".scrabble()).to(eq(10))
  end

end
