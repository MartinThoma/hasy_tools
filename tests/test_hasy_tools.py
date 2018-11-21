#!/usr/bin/env python
# -*- coding: utf-8 -*-

# core modules
import unittest


class HasyToolsTests(unittest.TestCase):

    def test_load_data(self):
        from hasy_tools import load_data
        data = load_data()
