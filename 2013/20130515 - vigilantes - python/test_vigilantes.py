#-*- coding: utf-8 -*-
import unittest
from vigilantes import vigilantes

class VigilantesTestCase(unittest.TestCase):
    def test_um_alimento(self):
        tabela = [(10, 1000)]
        self.assertEqual(1000, vigilantes(tabela, 10))

    def test_um_alimento_com_sabor_diferente(self):
        tabela = [(10, 1001)]
        self.assertEqual(1001, vigilantes(tabela, 10))

    def test_dois_alimentos_onde_o_segundo_eh_o_melhor(self):
        tabela = [(10, 1), (10, 1001)]
        self.assertEqual(1001, vigilantes(tabela, 10))

    def test_dois_alimentos_onde_o_segundo_eh_o_maior_que_o_permitido(self):
        tabela = [(10, 1), (11, 1001)]
        self.assertEqual(1, vigilantes(tabela, 10))

    def test_nao_pode_se_alimentar(self):
        tabela = [(11, 1), (11, 1001)]
        self.assertEqual(0, vigilantes(tabela, 10))

    def test_dois_alimentos_com_soma_menor_que_o_limite(self):
        tabela = [(5, 1), (4, 1001)]
        self.assertEqual(1002, vigilantes(tabela, 10))

unittest.main()