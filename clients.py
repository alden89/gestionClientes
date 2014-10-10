#!/usr/bin/python
# -*- coding: utf-8 -*-
import pygtk
pygtk.require('2.0')

import gtk
import os
import sys
import sqlite3

from addClient import agregarCliente
from filesel import FileSelection
from addPayment import AgregarPago
from comun import ventana_mensaje, imgAndLabel
from payments import Pagos
from about import About
class Clientes(object):
    
    #===========================================================================
    def __init__(self):
        self.sistemaop = sys.platform#detectamos el sistema operativo para saber como pasar la ruta de archivos correctamente
        self.nuevo = True
        # Se carga el archivo glade con la ventana principal
        self.builderClientes = gtk.Builder()
        if self.sistemaop == 'linux2':
            self.builderClientes.add_from_file("views/main.glade")
            self.conexion = sqlite3.connect("DB/zumba.db")
        else:
            self.builderClientes.add_from_file("views\\main.glade")
            self.conexion = sqlite3.connect("DB\\zumba.db")
        # Se recuperan los widget a usar
        self.ventanaClientes = self.builderClientes.get_object("ventanaComun")
        self.ventanaClientes.set_title('Gestion de clientes')
        self.vistaClientes = self.builderClientes.get_object("vista")
        self.botonAgregar = self.builderClientes.get_object("botonAgregar")
        self.botonModificar = self.builderClientes.get_object("botonModificar")
        self.botonEliminar = self.builderClientes.get_object("botonEliminar")
        self.botonVerFoto = self.builderClientes.get_object("botonVerFoto")
        self.botonAgregarFoto = self.builderClientes.get_object("botonAgregarFoto")
        self.botonAgregarPago = self.builderClientes.get_object("botonAgregarPago")
        self.botonVerPago = self.builderClientes.get_object("botonVerPagos")
        self.entryBuscar = self.builderClientes.get_object("entryBuscar")

        box1 = imgAndLabel(self.ventanaClientes, gtk.STOCK_ADD, "Agregar Cliente")
        box2 = imgAndLabel(self.ventanaClientes, gtk.STOCK_EDIT, "Editar Cliente")
        box3 = imgAndLabel(self.ventanaClientes, gtk.STOCK_DELETE, "Eliminar Cliente")
        box4 = imgAndLabel(self.ventanaClientes, gtk.STOCK_INDEX, "Ver Foto")
        box5 = imgAndLabel(self.ventanaClientes, gtk.STOCK_DIRECTORY, "Agregar Foto")
        box6 = imgAndLabel(self.ventanaClientes, gtk.STOCK_SAVE_AS, "Agregar Pago")
        box7 = imgAndLabel(self.ventanaClientes, gtk.STOCK_COPY, "Ver Pagos")


        self.botonAgregar.add(box1)
        self.botonModificar.add(box2)
        self.botonEliminar.add(box3)
        self.botonVerFoto.add(box4)
        self.botonAgregarFoto.add(box5)
        self.botonAgregarPago.add(box6)
        self.botonVerPago.add(box7)
        
        box1.show()
        box2.show()
        box3.show()
        box4.show()
        box5.show()
        box6.show()
        box7.show()
        #se asignan las variables recibidas
        #self.conexion = conexion
        #self.cursor = cursor
        self.cursor = self.conexion.cursor()
        
        # Se asocian las señales del archivo glade a metodos de la clase
        self.builderClientes.connect_signals(self)
            
        self.cargarVista('clientes') # Se llena la vista con los registros (True indica que es la carga inicial)
        self.vistaClientes.set_search_entry(self.entryBuscar)
        self.ventanaClientes.maximize()
        self.ventanaClientes.show()
    
    #===========================================================================
    
    def cargarVista(self, inicial):
        
        # Tipos de dato de cada columna. CI, Nombre, Telefono, Movil, email, Direccion, Ciudad, Tipo dde pago
        lista = gtk.ListStore(str,str,str,str,str,str,str,str,str)#,gtk.gdk.Pixbuf) 
        render = gtk.CellRendererText() # Objeto que se encarga de dibujar cada celda

        # Columnas de la vista
        columna0 = gtk.TreeViewColumn('CI', render, text=0)
        columna1 = gtk.TreeViewColumn('Nombres', render, text=1)
        columna2 = gtk.TreeViewColumn('Apellidos', render, text=2)
        columna3 = gtk.TreeViewColumn('Telefono', render, text=3)
        columna4 = gtk.TreeViewColumn('Movil', render, text=4)
        columna5 = gtk.TreeViewColumn('Correo Electronico', render, text=5)
        columna6 = gtk.TreeViewColumn('Direccion', render, text=6)
        columna7 = gtk.TreeViewColumn('Ciudad', render, text=7)
        columna8 = gtk.TreeViewColumn('Tipo de Pago', render, text=8)
        
        sql='SELECT * FROM clientes'
        self.cursor.execute(sql)
        resultado = self.cursor.fetchall()
        #foto=gtk.gdk.pixbuf_new_from_file('icon.png')
        for registro in resultado:
            lista.append([registro[0],registro[1],registro[2],registro[3],registro[4],registro[5],registro[6],registro[7],registro[8]])
        self.vistaClientes.set_model(lista)
        # Arma la vista con las columas y lista de elementos
        if inicial == 'clientes':
            self.vistaClientes.set_model(lista)
            self.vistaClientes.append_column(columna0)
            self.vistaClientes.append_column(columna1)
            self.vistaClientes.append_column(columna2)
            self.vistaClientes.append_column(columna3)
            self.vistaClientes.append_column(columna4)
            self.vistaClientes.append_column(columna5)
            self.vistaClientes.append_column(columna6)
            self.vistaClientes.append_column(columna7)
            self.vistaClientes.append_column(columna8)
            #self.vistaClientes.append_column(columna9)
        
        # Permite ordenar por columnas
        columna0.set_sort_column_id(0)
        columna1.set_sort_column_id(1)
        columna2.set_sort_column_id(2)
        columna8.set_sort_column_id(3)

        self.vistaClientes.show()
             
    #===========================================================================
    
    def click_agregar(self, widget):
        self.nuevo = True
        agregarCliente(self.conexion, self.cursor, self.nuevo, None, self.vistaClientes, self.ventanaClientes)
        
    #===========================================================================
    
    def click_modificar(self, widget):
        self.nuevo = False
        (model,itera) = self.vistaClientes.get_selection().get_selected()
        if itera != None:
            # Se asocian a los campos de edición los valores seleccionados
            fila = list(model[itera])
            agregarCliente(self.conexion, self.cursor, self.nuevo, fila, self.vistaClientes, self.ventanaClientes)# Ventana de edición de los datos
        else:
            ventana_mensaje(self.ventanaClientes, gtk.MESSAGE_INFO, gtk.BUTTONS_OK, 'Debe seleccionar un cliente.')
            
    #===========================================================================
    
    def click_eliminar(self, widget):

        (model,itera) = self.vistaClientes.get_selection().get_selected()
        if itera != None:
            conf = ventana_mensaje(self.ventanaClientes,gtk.MESSAGE_QUESTION, gtk.BUTTONS_YES_NO, '¿Desea realmente eliminar el registro seleccionado?')    
            if conf:
                # Se recupera el ID, único campo necesario para eliminar
                fila = list(model[itera])                   
                sql='delete from clientes where ci = %s'
                self.cursor.execute(sql%(fila[0]))
                self.conexion.commit()           
                self.cargarVista('Eliminado') # Se llena la vista con los registros (False indica que no es la carga inicial)
        else:
            ventana_mensaje(self.ventanaClientes, gtk.MESSAGE_INFO, gtk.BUTTONS_OK, 'Debe seleccionar un cliente.')
           
    #===========================================================================

    def ventana_foto(self):
        self.builderFoto = gtk.Builder()
        if self.sistemaop == 'linux2':
            self.builderFoto.add_from_file("views/picture.glade")
        else:
            self.builderFoto.add_from_file("views\\picture.glade")
        
        self.ventanaFoto = self.builderFoto.get_object("ventanaFoto")
        self.etiquetaFoto = self.builderFoto.get_object("etiquetaFoto")
        self.imagenFoto = self.builderFoto.get_object("iFoto")
        self.idFoto = ''
        
        self.builderFoto.connect_signals(self)            
        
    #===========================================================================

    def leer_imagen(self, widget):
        
        (model,itera) = self.vistaClientes.get_selection().get_selected()
        if itera != None:
            self.ventana_foto() # Ventana de edición de los datos
            # Se asocian a los campos de edición los valores seleccionados
            fila = list(model[itera])
            sql = "SELECT foto FROM fotos WHERE ci = %s"
            self.cursor.execute (sql%(fila[0]))#sentencia que recupera la foto a travez del numero de ci del cliente
            resultado = self.cursor.fetchone()
            if resultado:
                if self.sistemaop == 'linux2':
                    self.ruta = 'pictures/'+fila[0]+'_'+fila[1]
                else:
                    self.ruta = 'pictures\\'+fila[0]+'_'+fila[1]
                salida = open(self.ruta,'wb')#nombre del archivo que se va a guardar (cualquier nombre) en el archivo de salida
                self.archivo = fila[0]+fila[1]
                salida.write(resultado[0])#escribe el resultado en el archivo de salida
                salida.close()#cerrar archivo
                self.idFoto = fila[0]
                self.etiquetaFoto.set_text('Cliente '+fila[1]+' '+fila[2])
                self.imagenFoto.set_from_file(self.ruta)
                self.ventanaFoto.show()
            else:
                ventana_mensaje(self.ventanaClientes, gtk.MESSAGE_WARNING, gtk.BUTTONS_CLOSE, 'La persona seleccionada no posee una foto')
        else:
            ventana_mensaje(self.ventanaClientes, gtk.MESSAGE_INFO, gtk.BUTTONS_OK, 'Debe seleccionar un cliente.')
    #===========================================================================

    def cerrar_foto(self, widget):
            os.remove(self.ruta)
            self.ventanaFoto.destroy()
    #===========================================================================

    def borrar_foto(self, widget):
            conf = ventana_mensaje(self.ventanaClientes,gtk.MESSAGE_QUESTION, gtk.BUTTONS_YES_NO, '¿Desea realmente eliminar la foto de este usuario?')
            if conf:   
                sql='DELETE FROM fotos WHERE ci = %s'
                self.cursor.execute(sql%(self.idFoto))
                cursor.execute(sql)
                conexion.commit()
                self.conexion.commit()
                self.ventanaFoto.destroy()
                ventana_mensaje(self.ventanaFoto, gtk.MESSAGE_INFO, gtk.BUTTONS_OK, 'La foto fue eliminada correctamente!')
    #===========================================================================
    
    def agregar_foto(self, widget):
        (model,itera) = self.vistaClientes.get_selection().get_selected()
        if itera != None:
            # Se asocian a los campos de edición los valores seleccionados
            fila = list(model[itera])
            foto = FileSelection(fila, self.cursor, self.conexion)
        else:
            ventana_mensaje(self.ventanaClientes, gtk.MESSAGE_INFO, gtk.BUTTONS_OK, 'Debe seleccionar un cliente.')
    #===========================================================================
    def agregar_pago(self, widget):
        (model,itera) = self.vistaClientes.get_selection().get_selected()
        if itera != None:
            # Se asocian a los campos de edición los valores seleccionados
            fila = list(model[itera])
            pago = AgregarPago(fila, self.cursor, self.conexion, self.ventanaClientes)
        else:
            ventana_mensaje(self.ventanaClientes, gtk.MESSAGE_INFO, gtk.BUTTONS_OK, 'Debe seleccionar un cliente.')
    #===========================================================================
    def ver_pagos(self, widget):
        (model,itera) = self.vistaClientes.get_selection().get_selected()
        if itera != None:
            filaPagos = list(model[itera])
            Pagos(filaPagos, self.cursor, self.conexion, self.ventanaClientes)
        else:
            ventana_mensaje(self.ventanaClientes, gtk.MESSAGE_INFO, gtk.BUTTONS_OK, 'Debe seleccionar un cliente.')
    #===========================================================================
    def click_about(self, widget):
        About()
    #===========================================================================
    def cerrar_ventana(self, widget):
        gtk.main_quit()
# if __name__ == "__main__":
#     app = Clientes()
#     gtk.main()        