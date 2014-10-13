#!/usr/bin/env python
# -*- coding: utf-8 -*-
# ejemplo filesel.py

import pygtk
pygtk.require('2.0')
import gtk
import sys
from datetime import datetime
from comun import ventana_mensaje, imgAndLabel
from addPayment import AgregarPago
from printing import ImprimirRecibo
from numToText import to_word
class Pagos(object):
      def __init__(self, fila, cursor, conexion, padre):
        sql='SELECT * FROM pagos WHERE ci = %s'
        cursor.execute(sql%fila[0])
        resultado = cursor.fetchall()
        if resultado:
            self.meses = ["","Enero","Febrero","Marzo","Abril","Mayo","Junio","Julio","Agosto","Septiembre","Octubre","Noviembre","Diciembre"]
            self.sistemaop = sys.platform#detectamos el sistema operativo para saber como pasar la ruta de archivos correctamente
            # Se carga el archivo glade con la ventana principal
            self.builderPagos = gtk.Builder()
            if self.sistemaop == 'linux2':
                self.builderPagos.add_from_file("views/payments.glade")
            else:
                self.builderPagos.add_from_file("views\\payments.glade")
            # Se recuperan los widget a usar
            self.ventanaPagos = self.builderPagos.get_object("ventanaPagos")
            self.ventanaPagos.set_title('Gestion de Pagos')
            self.ventanaPagos.set_transient_for(padre)
            self.vistaPagos = self.builderPagos.get_object("vista")
            self.botonAgregarPago = self.builderPagos.get_object("botonAgregarPago")
            self.botonImprimir = self.builderPagos.get_object("botonImprimir")

            box1 = imgAndLabel(self.ventanaPagos, gtk.STOCK_ADD, "Agregar pago")
            box2 = imgAndLabel(self.ventanaPagos, gtk.STOCK_PRINT, "Imprimir recibo")


            self.botonAgregarPago.add(box1)
            self.botonImprimir.add(box2)
            
            box1.show()
            box2.show()
            self.fila = fila
            self.cursor = cursor
            self.conexion = conexion
            # Se asocian las señales del archivo glade a metodos de la clase
            self.builderPagos.connect_signals(self)
            self.cargarVista()
            self.ventanaPagos.maximize()
            self.ventanaPagos.show()
        else:
            ventana_mensaje(padre, gtk.MESSAGE_INFO, gtk.BUTTONS_OK, 'Esta persona no posee ningun pago registrado.')

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
        
        self.vistaPagos.append_column(columna0)
        self.vistaPagos.append_column(columna1)
        self.vistaPagos.append_column(columna2)
        self.vistaPagos.append_column(columna3)
        self.vistaPagos.append_column(columna4)
        
        # Permite ordenar por columnas
        columna0.set_sort_column_id(0)
        columna1.set_sort_column_id(1)
        columna2.set_sort_column_id(2)
        columna3.set_sort_column_id(3)
        columna4.set_sort_column_id(4)
        self.vistaPagos.show()
      def agregar_pago(self, widget):
        (model,itera) = self.vistaPagos.get_selection().get_selected()
        if itera != None:
            # Se asocian a los campos de edición los valores seleccionados
            fila = list(model[itera])
            pago = AgregarPago(fila, self.cursor, self.conexion,self.ventanaPagos, True, self.vistaPagos)
        else:
            ventana_mensaje(self.ventanaPagos, gtk.MESSAGE_INFO, gtk.BUTTONS_OK, 'Debe seleccionar una fila.')
      def imprimir_recibo(self, widget):
        (model,itera) = self.vistaPagos.get_selection().get_selected()
        if itera != None:
            # Se asocian a los campos de edición los valores seleccionados
            fila = list(model[itera])
            cliente = fila[1]+" "+fila[2]
            monto = int(fila[3])
            montoLetras = to_word(monto)
            ciudad = 'Asunción'
            fecha = datetime.strptime(fila[4] , '%Y-%m-%d %H:%M:%S')
            dia = fecha.day
            mes = fecha.month
            year = fecha.year
            
            sql='SELECT numero FROM numeroRecibo'
            self.cursor.execute(sql,)
            resultado = self.cursor.fetchone()
            if resultado:
                numeroRecibo = resultado[0]
                imprimir = ImprimirRecibo(numeroRecibo, monto, ciudad, dia, self.meses[int(mes)], year, cliente, montoLetras, 
                    self.conexion, self.cursor, self.ventanaPagos)
            else:
                print resultado
        else:
            ventana_mensaje(self.ventanaPagos, gtk.MESSAGE_INFO, gtk.BUTTONS_OK, 'Debe seleccionar una fila.')