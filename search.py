#!/usr/bin/python
# -*- coding: utf-8 -*-
import pygtk
import MySQLdb
pygtk.require('2.0')

import gtk

def match_func(model, iter, data):
       column, key = data # data es una tupla que contiene número de columna, clave (key)
       value = model.get_value(iter, column)
       print value
       return value == key
def search(model, iter, func, data):
       while iter:
           if func(model, iter, data):
               return iter
           result = search(model, model.iter_children(iter), func, data)
           if result:
            print 'resultado final: ',result 
            return result
           iter = model.iter_next(iter)
       return None