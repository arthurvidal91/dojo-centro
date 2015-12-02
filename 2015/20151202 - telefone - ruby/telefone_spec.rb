require './telefone'

describe "Telefone" do
  it "is 2 for A" do
    expect(telefone_de('A')).to eq('2')
  end

  it "is 3 for D" do
    expect(telefone_de('D')).to eq('3')
  end

  it "is 3 for E" do
    expect(telefone_de('E')).to eq('3')
  end

  it "is 3 for F" do
    expect(telefone_de('F')).to eq('3')
  end

  it "is 4 for G" do
    expect(telefone_de('G')).to eq('4')
  end

  it "is 4 for H" do
    expect(telefone_de('H')).to eq('4')
  end

  it "is 4 for I" do
    expect(telefone_de('I')).to eq('4')
  end

  it "is 5 for J" do
    expect(telefone_de('J')).to eq('5')
  end

  it "is 5 for K" do
    expect(telefone_de('K')).to eq('5')
  end

  it "is 5 for L" do
    expect(telefone_de('L')).to eq('5')
  end

  it "is 6 for M" do
    expect(telefone_de('M')).to eq('6')
  end

  it "is 6 for N" do
    expect(telefone_de('N')).to eq('6')
  end

  it "is 6 for O" do
    expect(telefone_de('O')).to eq('6')
  end
end