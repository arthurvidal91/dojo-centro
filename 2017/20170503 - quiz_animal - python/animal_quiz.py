#!/usr/bin/env python
# -*- coding: utf-8 -*-

class Quiz():



    def advinha(self, resposta=False):
        if resposta:
            return 'Cachorro'
        return 'Tem quatro patas?'


#mia, voa, pena, come_banana, nada, couro
animal= {
(  1,   0,    0,           0,    0,     0): 'gato',
(  0,   1,    1,           0,    0,     0): 'pombo',
(  0,   1,    0,           0,    0,     0): 'morcego', 
(  0,   0,    1,           0,    1,     0): 'pato',
(  0,   0,    1,           0,    0,     0): 'galinha',
(  0,   0,    0,           1,    0,     0): 'macaco',
(  0,   0,    0,           0,    1,     1): 'hipopotamo',
(  0,   0,    0,           0,    0,     0): 'cachorro',
(  0,   0,    0,           0,    0,     1): 'cavalo'
}
def quiz(mia=False, voa=False,
         pena=False, come_banana=False, nada=False, 
         couro=False):

    return animal[(mia, voa, pena, come_banana, nada, couro)]