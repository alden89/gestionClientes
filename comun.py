#!/usr/bin/python
# -*- coding: utf-8 -*-
import pygtk
pygtk.require('2.0')
import gtk    
from string import Template
#===========================================================================    
def ventana_mensaje(padre, tipo, botones, mensaje):
    ventana = gtk.MessageDialog(parent = padre,
                                    type = tipo,
                                    buttons = botones,
                                    message_format = mensaje)
    ventana.set_position(gtk.WIN_POS_CENTER_ALWAYS)
    respuesta = ventana.run()
    ventana.destroy()
    if (respuesta == gtk.RESPONSE_OK) or (respuesta == gtk.RESPONSE_YES):
        return True
    else:
        return False
#===========================================================================
def imgAndLabel(parent, xpm_filename, label_text):
    box1 = gtk.HBox(False, 0)
    box1.set_border_width(2)

    image = gtk.Image()
    image.set_from_stock(xpm_filename,gtk.ICON_SIZE_BUTTON)

    label = gtk.Label(label_text)

    box1.pack_start(image, False, False, 3)
    box1.pack_start(label, False, False, 3)

    image.show()
    label.show()
    return box1
#===========================================================================
class Recibo(object):
  def __init__(self, numeroRecibo, monto, ciudad, dia, mes, year, cliente, montoLetras):
    self.recibo_template = Template("""    N.º $numeroRecibo

    G. $monto

    $ciudad, $dia de $mes de $year

    Recibí(mos) de: $cliente

    la cantidad de guaraníes: $montoLetras

    en concepto de: $concepto

    Firma

    …..................................""")
    self.contenido = dict(numeroRecibo = numeroRecibo,
                     monto=monto,
                     ciudad=ciudad,
                     dia=dia,
                     mes=mes,
                     year=year,
                     cliente=cliente,
                     montoLetras=montoLetras,
                     concepto='Pago de cuota')
    self.resultado = self.recibo_template.safe_substitute(self.contenido)