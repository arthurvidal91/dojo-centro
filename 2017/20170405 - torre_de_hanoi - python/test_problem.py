#!/usr/bin/env python
# -*- coding: utf-8 -*-

import unittest
from problem import *


class TestProblem(unittest.TestCase):
    def test_rodelas_com_zero(self):
        self.assertEqual(0,rodelas("str"))

    def test_rodelas_com_zero(self):
        self.assertEqual(0,rodelas(0))

    def test_rodelas_com_1(self):
        self.assertEqual(1,rodelas(1))

    def test_rodelas_com_2(self):
        self.assertEqual(3,rodelas(2))

    def test_rodelas_com_3(self):
        self.assertEqual(7,rodelas(3))



if __name__ == "__main__":
    unittest.main()

