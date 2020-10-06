#spec/cipher_spec.rb
require "./lib/Caesar.rb"

describe "caeser_cipher" do
  it "Is capable of incrementing by one" do
    expect(caesar_cipher("a", 1)).to eql("b")
  end
end

describe "caeser_cipher" do
  it "Is capable of incrementing a string" do
    expect(caesar_cipher("password", 1)).to eql("qbttxpse")
  end
end

describe "caesar_cipher" do
  it "Is capable of incrementing and maintaining a capital letter" do
    expect(caesar_cipher("R", 1)).to eql("S")
  end
end

describe "caesar_cipher" do
  it "Is capable of handling a string with special characters" do
    expect(caesar_cipher("A very secret code!", 1)).to eql("B wfsz tfdsfu dpef!")
  end
end

describe "caesar_cipher" do
  it "Is capable of incrementing by more than just one" do
    expect(caesar_cipher("Hello", 10)).to eql("Rovvy")
  end
end

describe "caesar_cipher" do
  it "Is capable of incrementing by a number greater than 26" do
    expect(caesar_cipher("Hello", 100)).to eql("Dahhk")
  end
end

describe "caesar_cipher" do
  it "Is capable of incrementing a string with special characters by a large number" do
    expect(caesar_cipher("Men at some time are masters of their fates. 
      The fault, dear Brutus, is not in our stars, 
      but in ourselves, that we are underlings.", 100)).to eql("Iaj wp okia peia wna iwopano kb pdaen bwpao. 
      Pda bwqhp, zawn Xnqpqo, eo jkp ej kqn opwno, 
      xqp ej kqnoahrao, pdwp sa wna qjzanhejco.")
  end
end