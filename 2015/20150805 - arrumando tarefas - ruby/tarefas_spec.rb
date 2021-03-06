require './tarefas'

describe 'Tarefas' do
  it 'uma hora uma tarefa até uma hora' do
    horas = 1
    tarefas = [[1, 1]]
    expect(perda_minima(horas, tarefas)).to eq(0)
  end

  it 'uma hora duas tarefase e rendimento 1' do
    horas = 1
    tarefas = [[1, 1], [1, 1]]
    expect(perda_minima(horas, tarefas)).to eq(1)
  end

  it 'uma hora duas tarefas e rendimento 2' do
    horas = 1
    tarefas = [[2, 1], [2, 1]]
    expect(perda_minima(horas, tarefas)).to eq(2)
  end

  it 'uma hora duas tarefas e rendimento 3 e 2' do
    horas = 1
    tarefas = [[3, 1], [2, 1]]
    expect(perda_minima(horas, tarefas)).to eq(2)
  end

  it 'uma hora duas tarefas e rendimento 2 e 3' do
    horas = 1
    tarefas = [[2, 1], [3, 1]]
    expect(perda_minima(horas, tarefas)).to eq(2)
  end

  it 'duas horas duas tarefas e rendimento 2 e 3' do
    horas = 2
    tarefas = [[2, 2], [3, 2]]
    expect(perda_minima(horas, tarefas)).to eq(0)
  end

  it 'duas horas duas tarefas 1 hora e rendimento 2 e 3' do
    horas = 2
    tarefas = [[2, 1], [3, 1]]
    expect(perda_minima(horas, tarefas)).to eq(2)
  end

  it 'duas horas duas tarefas 1-2 horas e rendimento 2 e 3' do
    horas = 2
    tarefas = [[2, 1], [3, 2]]
    expect(perda_minima(horas, tarefas)).to eq(0)
  end

  it 'duas horas duas tarefas 2-1 horas e rendimento 2 e 3' do
    horas = 2
    tarefas = [[2, 2], [3, 1]]
    expect(perda_minima(horas, tarefas)).to eq(0)
  end

  it 'duas horas tres tarefas' do
    horas = 2
    tarefas = [[1, 2], [1, 2], [1, 2]]
    expect(perda_minima(horas, tarefas)).to eq(1)
  end

  it 'tres horas tres tarefas 3 horas' do
    horas = 3
    tarefas = [[1, 3], [1, 3], [1, 3]]
    expect(perda_minima(horas, tarefas)).to eq(0)
  end

  it 'tres horas tres tarefas 1-1-2 horas' do
    horas = 3
    tarefas = [[1, 1], [1, 1], [1, 2]]
    expect(perda_minima(horas, tarefas)).to eq(1)
  end

  it 'tres horas tres tarefas 2-1-1 horas' do
    horas = 3
    tarefas = [[1, 2], [1, 1], [1, 1]]
    expect(perda_minima(horas, tarefas)).to eq(1)
  end

  it 'tres horas tres tarefas 2-2-1 horas' do
    horas = 3
    tarefas = [[1, 2], [1, 2], [1, 1]]
    expect(perda_minima(horas, tarefas)).to eq(1)
  end

  it 'tres horas tres tarefas 3-2-1 horas' do
    horas = 3
    tarefas = [[1, 3], [1, 2], [1, 1]]
    expect(perda_minima(horas, tarefas)).to eq(0)
  end

  it 'tres horas tres tarefas 4-2-1 horas' do
    horas = 3
    tarefas = [[1, 4], [1, 2], [1, 1]]
    expect(perda_minima(horas, tarefas)).to eq(0)
  end

  it 'tres horas tres tarefas 2-2-1 horas rendimento 2' do
    horas = 3
    tarefas = [[2, 2], [2, 2], [2, 1]]
    expect(perda_minima(horas, tarefas)).to eq(2)
  end



end