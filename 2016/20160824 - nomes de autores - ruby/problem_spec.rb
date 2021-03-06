require_relative 'problem'

describe "Nomes de autores" do
  it "um nome só" do
    nome = 'Jose'
    expect(nome_autor(nome)).to eq('JOSE')
  end

  it "outro nome só" do
    nome = 'Maria'
    expect(nome_autor(nome)).to eq('MARIA')
  end

  it "outro nome ainda só" do
    nome = 'Joana'
    expect(nome_autor(nome)).to eq('JOANA')
  end

  it "dois nomes" do
    nome = 'Joana Silva'
    expect(nome_autor(nome)).to eq('SILVA, Joana')
  end

  it "outro com dois nomes" do
    nome = 'Joao Silva'
    expect(nome_autor(nome)).to eq('SILVA, Joao')
  end

  it "outro com dois nomes e conjuncao" do
    nome = 'Joao da Silva'
    expect(nome_autor(nome)).to eq('SILVA, Joao da')
  end

  it "outro com tres nomes e conjuncao" do
    nome = 'Joao da Silva Sauro'
    expect(nome_autor(nome)).to eq('SAURO, Joao da Silva')
  end

  it "outro com tres nomes em minusculas" do
    nome = 'joao silva Sauro'
    expect(nome_autor(nome)).to eq('SAURO, Joao Silva')
  end

  it "outro com dois nomes em minusculas e nova conjuncao" do
    nome = 'jose de arimateia'
    expect(nome_autor(nome)).to eq('ARIMATEIA, Jose de')
  end

  it "outro com dois nomes em minusculas, conjuncao e Junior" do
    nome = 'jose de arimateia junior'
    expect(nome_autor(nome)).to eq('ARIMATEIA JUNIOR, Jose de')
  end

  it "outro com dois nomes em minusculas, conjuncao e filho" do
    nome = 'jose de arimateia filho'
    expect(nome_autor(nome)).to eq('ARIMATEIA FILHO, Jose de')
  end

  it "outro com nomes em maiusculas, conjuncao e filho" do
    nome = 'JOSE DE ARIMATEIA FILHO'
    expect(nome_autor(nome)).to eq('ARIMATEIA FILHO, Jose de')
  end

end
