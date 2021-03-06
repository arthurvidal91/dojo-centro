#https://www.hackerrank.com/challenges/two-strings
import unittest
from two_strings import two_strings

class TestAttackingRooks(unittest.TestCase):
	def test_1(self):
		strings = [
			'a',
			'a'
		]
		self.assertEquals(two_strings(strings), True)

	def test_2(self):
		strings = [
			'c',
			'ab'
		]
		self.assertEquals(two_strings(strings), False)

	def test_3(self):
		strings = [
			'cd',
			'ab'
		]
		self.assertEquals(two_strings(strings), False)

	def test_4(self):
		strings = [
			'cd',
			'abd'
		]
		self.assertEquals(two_strings(strings), True)

	def test_5(self):
		strings = [
			'abd',
			'c',			
		]
		self.assertEquals(two_strings(strings), False)

	def test_6(self):
		strings = [
			'abd',
			'f',			
		]
		self.assertEquals(two_strings(strings), False)

	def test_7(self):
		strings = [
			'abd',
			'fd',			
		]
		self.assertEquals(two_strings(strings), True)


unittest.main()