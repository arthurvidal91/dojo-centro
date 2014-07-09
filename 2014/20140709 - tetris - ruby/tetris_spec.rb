require './tetris'

describe 'Tetris' do
  describe 'turn_piece' do
    it 'puts I piece vertical' do
      piece = ['####']

      expect(turn_piece(piece)).to eq(['#',
                                       '#',
                                       '#',
                                       '#'])
    end

    it 'turn I piece horizontal' do
      piece = ['#',
               '#',
               '#',
               '#']

      expect(turn_piece(piece)).to eq(['####'])
    end

    it 'turn L piece vertical' do
      piece = ['  #',
               '###']

      expect(turn_piece(piece)).to eq(['# ',
                                       '# ',
                                       '##'])
    end

    it 'turn L piece horizontal' do
      piece = ['# ',
               '# ',
               '##']

      expect(turn_piece(piece)).to eq(['###',
                                       '#  '])
    end

    it 'turn L piece to almost T' do
      piece = ['###',
               '#  ']
      
      expect(turn_piece(piece)).to eq(['##',
                                       ' #',
                                       ' #'])
    end

    it 'turn T piece to right' do
      piece = ['###',
               ' # ']
      
      expect(turn_piece(piece)).to eq([' #',
                                       '##',
                                       ' #'])
    end

    it 'turn square piece to right' do
      piece = ['##',
               '##']
      
      expect(turn_piece(piece)).to eq(['##',
                                       '##'])
    end
  end
end