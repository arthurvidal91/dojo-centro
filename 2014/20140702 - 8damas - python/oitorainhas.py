def pode_atacar(tabuleiro):
    for linha in tabuleiro:
        if (linha.count(1) >= 2):
            return True

    for j in xrange(0, 4):
        coluna = [linha[j] for linha in tabuleiro]
        if (coluna.count(1) >= 2):
            return True
    
    diagonal = [tabuleiro[j][j] for j in xrange(0, 4)]
    if (diagonal.count(1) >= 2):
        return True


    diagonal = [tabuleiro[j][3-j] for j in range(0, 4)]
    if (diagonal.count(1) >= 2):
        return True
    

    diagonal = [tabuleiro[j][j + 1] for j in xrange(0, 3)]
    if (diagonal.count(1) >= 2):
        return True

    diagonal = [tabuleiro[j + 1][j] for j in xrange(0, 3)]
    if (diagonal.count(1) >= 2):
        return True

    diagonal = [tabuleiro[j + 2][j] for j in xrange(0, 2)]
    if (diagonal.count(1) >= 2):
        return True

    diagonal = [tabuleiro[j][1-j] for j in xrange(0, 3)]
    if (diagonal.count(1) >= 2):
        return True



    return False
