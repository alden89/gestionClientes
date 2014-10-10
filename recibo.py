#!/usr/bin/env python
# -*- coding: utf-8 -*-
from string import Template
class Recibo(object):
  def __init__(self, monto, ciudad, dia, mes, year, cliente, montoLetras):
    self.recibo_template = Template("""N.º
    G.$monto

    $ciudad, $dia de $mes de $year

    Recibí(mos) de: $cliente

    la cantidad de guaraníes: $montoLetras

    en concepto de: $concepto

    Firma

    …..................................

    Aclaración""")
    self.contenido = dict(monto=monto,
                     ciudad=ciudad,
                     dia=dia,
                     mes=mes,
                     year=year,
                     cliente=cliente,
                     montoLetras=montoLetras,
                     concepto='Pago de cuota')
    self.resultado = self.recibo_template.safe_substitute(self.contenido)
# if __name__ == '__main__':
#   app = Recibo()