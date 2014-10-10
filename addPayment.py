#!/usr/bin/env python
# -*- coding: utf-8 -*-
import pygtk
pygtk.require('2.0')
import gtk
import sys
from comun import ventana_mensaje
class AgregarPago(object):
	    # Obtener el nombre del fichero seleccionado e imprimirlo a la consola
      def click_ok(self, w):
        monto = self.monto.get_text()
        if monto.isdigit() and monto != '':
          self.cursor.execute("INSERT INTO pagos (ci, nombre, apellido, monto) VALUES(%s, '%s', '%s', %s) " % 
                                                  (self.ci.get_text(), self.nombre.get_text(), self.apellido.get_text(), monto))#ejecuta sentencia de ingreso de imagen
          self.conexion.commit()#cierra transaccion
          gtk.Object.destroy(self.ventanaPago)
          ventana_mensaje(self.ventanaPago, gtk.MESSAGE_INFO, gtk.BUTTONS_OK, 'El pago fue cargado correctamente.')
        else:
          ventana_mensaje(self.ventanaPago, gtk.MESSAGE_ERROR, gtk.BUTTONS_OK, 'El campo monto no debe estar vacío y debe ser numérico.')

      def destroy(self, widget):
        gtk.Object.destroy(self.ventanaPago)

      def __init__(self, fila, cursor, conexion, padre):
        self.fila = fila
        self.cursor = cursor
        self.conexion = conexion
        self.sistemaop = sys.platform
        # Creamos un nuevo control de selección de fichero
        self.builderPago = gtk.Builder()
        if self.sistemaop == 'linux2':
            self.builderPago.add_from_file("views/addPayment.glade")
        else:
            self.builderPago.add_from_file("views\\addPayment.glade")
        
        self.ventanaPago = self.builderPago.get_object("ventanaPago")
        self.ventanaPago.set_transient_for(padre)
        self.ci = self.builderPago.get_object("ci")
        self.nombre = self.builderPago.get_object("nombre")
        self.apellido = self.builderPago.get_object("apellido")
        self.monto = self.builderPago.get_object("monto")

        self.ci.set_text(fila[0])
        self.nombre.set_text(fila[1])
        self.apellido.set_text(fila[2])

        self.builderPago.connect_signals(self)

        self.ventanaPago.connect("destroy", self.destroy)
        self.ventanaPago.show()
