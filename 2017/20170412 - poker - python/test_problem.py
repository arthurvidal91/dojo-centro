#!/usr/bin/env python
# -*- coding: utf-8 -*-

import unittest
from problem import *


# Ouro (D), Copa (H), Espadas (S), Paus (C)

class TestProblem(unittest.TestCase):
    #def test_(self):
        #self.assertEqual(2, poker('5C 5P 6E 7E KO', '2P 3E 8E 8O DO'))

    def test_uma_carta_mesmo_naipe(self):
        self.assertEqual(1, poker('7C', '6C'))

    def test_uma_carta_mesmo_naipe_ao_contrario(self):
        self.assertEqual(2, poker('5C', '6C'))
	
    def test_maior_entre_dois(self):
        self.assertEqual(2, poker('4C 5P', '6C 7O'))

    def test_maior_entre_dois_ao_contrario(self):
        self.assertEqual(1, poker('4C 5P', '2C 3O'))

    def test_uma_dupla(self):
        self.assertEqual(1, poker('5C 5P', '6C 7O'))

    def test_uma_dupla_ao_contrario(self):
        self.assertEqual(2, poker('5C 6P', '3C 3O'))

    def test_maior_dupla(self):
    	self.assertEqual(2, poker('5C 5P', '6C 6P'))

    def test_maior_dupla_contrario(self):
    	self.assertEqual(1, poker('7C 7P', '6C 6P'))

    def test_uma_carta_mesmo_naipe_dez(self):
        self.assertEqual(2, poker('DC', 'AC'))

if __name__ == "__main__":
    unittest.main()

