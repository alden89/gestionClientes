#!/usr/bin/env python
# -*- coding: utf-8 -*-
import pygtk
pygtk.require('2.0')
import gtk
import sys
from comun import ventana_mensaje
from time import time
from datetime import datetime
class AgregarPago(object):
	    # Obtener el nombre del fichero seleccionado e imprimirlo a la consola
      def click_ok(self, w):
        monto = self.monto.get_text()
        if monto.isdigit() and monto != '':
          fecha = datetime.fromtimestamp(time()).strftime('%Y-%m-%d %H:%M:%S')
          self.cursor.execute("INSERT INTO pagos (ci, nombre, apellido, monto, fechaPago) VALUES(%s, '%s', '%s', %s, '%s') " % 
                                                  (self.ci.get_text(), self.nombre.get_text(), self.apellido.get_text(), monto, fecha))#ejecuta sentencia de ingreso de imagen
          self.conexion.commit()#cierra transaccion
          gtk.Object.destroy(self.ventanaPago)
          ventana_mensaje(self.ventanaPago, gtk.MESSAGE_INFO, gtk.BUTTONS_OK, 'El pago fue cargado correctamente.')
          if self.actualizar:
            self.cargarVista()
        else:
          ventana_mensaje(self.ventanaPago, gtk.MESSAGE_ERROR, gtk.BUTTONS_OK, 'El campo monto no debe estar vacío y debe ser numérico.')

      def destroy(self, widget):
        gtk.Object.destroy(self.ventanaPago)

      def __init__(self, fila, cursor, conexion, padre, actualizar, vista):
        self.fila = fila
        self.cursor = cursor
        self.conexion = conexion
        self.padre = padre
        self.actualizar = actualizar
        self.vistaPagos = vista
        self.sistemaop = sys.platform
        # Creamos un nuevo control de selección de fichero
        self.builderPago = gtk.Builder()
        if self.sistemaop == 'linux2':
            self.builderPago.add_from_file("views/addPayment.glade")
        else:
            self.builderPago.add_from_file("views\\addPayment.glade")
        
        self.ventanaPago = self.builderPago.get_object("ventanaPago")
        self.ventanaPago.set_transient_for(self.padre)
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
      def cargarVista(self):
        lista = gtk.ListStore(str,str,str,str,str)#,gtk.gdk.Pixbuf) 
        render = gtk.CellRendererText() # Objeto que se encarga de dibujar cada celda
        #celda_de_imagen = gtk.CellRendererPixbuf()#para imagen
        #render.set_property('cell-background','green')

        # Columnas de la vista
        columna0 = gtk.TreeViewColumn('CI', render, text=0)
        columna1 = gtk.TreeViewColumn('Nombres', render, text=1)
        columna2 = gtk.TreeViewColumn('Apellidos', render, text=2)
        columna3 = gtk.TreeViewColumn('Monto', render, text=3)
        columna4 = gtk.TreeViewColumn('Fecha', render, text=4)
        

        sql='SELECT * FROM pagos WHERE ci = %s'
        self.cursor.execute(sql%self.fila[0])
        resultado = self.cursor.fetchall()
        if resultado:
            for registro in resultado:
                lista.append([registro[0],registro[1],registro[2],registro[3],registro[4]])
        # Arma la vista con las columas y lista de elementos
        self.vistaPagos.set_model(lista)
        self.vistaPagos.show()
