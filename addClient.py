#!/usr/bin/python
# -*- coding: utf-8 -*-
import pygtk
pygtk.require('2.0')

import gtk
import imghdr as tipo
import sys

from comun import ventana_mensaje
class agregarCliente(object):

    def __init__(self, conexion, cursor, nuevo, fila, vista, padre):      
        self.agregarCliente = gtk.Builder()
        self.sistemaop = sys.platform#detectamos el sistema operativo para saber como pasar la ruta de archivos correctamente
        if self.sistemaop == 'linux2':
            self.agregarCliente.add_from_file("views/addClient.glade")
        else:
            self.agregarCliente.add_from_file("views\\addClient.glade")
        #se recuperan los wigets a usar
        self.ventanaAgregarCliente = self.agregarCliente.get_object("agregarClientes")
        self.ventanaAgregarCliente.set_transient_for(padre)
        self.ci = self.agregarCliente.get_object("ci")
        self.nombre = self.agregarCliente.get_object("nombre")
        self.apellido = self.agregarCliente.get_object("apellido")
        self.tel = self.agregarCliente.get_object("tel")
        self.cel = self.agregarCliente.get_object("cel")
        self.email = self.agregarCliente.get_object("email")
        self.dir = self.agregarCliente.get_object("dir")
        self.ciudad = self.agregarCliente.get_object("ciudad")
        self.comboTipoPago = self.agregarCliente.get_object("comboTipoPago")
        self.tabla = self.agregarCliente.get_object("tabla")
        #self.comboTipoPago = gtk.combo_box_entry_new_text()

        #asignamos las variables recibidas
        self.conexion = conexion
        self.cursor = cursor
        self.nuevo = nuevo
        self.vistaClientes = vista
        self.lista = fila        
        
        #definicion de los comboboxentry
        self.comboTipoPago = gtk.combo_box_entry_new_text()
        self.tabla.attach(self.comboTipoPago, 1,2,8,9)
        self.comboTipoPago.show()
        self.cargarTipoPago()

        #se conectan las se�ales
        self.cargarTipoPago()
        self.agregarCliente.connect_signals(self)
        if nuevo:
            self.ventanaAgregarCliente.show()
        else:
            self.ciAnt = fila[0]#guardamos la ci anterior por si se cambia al modificar datos
            self.ci.set_text(fila[0])
            self.nombre.set_text(fila[1])
            self.apellido.set_text(fila[2])
            self.tel.set_text(fila[3])
            self.cel.set_text(fila[4])
            self.email.set_text(fila[5])
            self.dir.set_text(fila[6])
            self.ciudad.set_text(fila[7])
            entryTipopago = gtk.Bin.get_child(self.comboTipoPago)            
            entryTipopago.set_text(fila[8])

            self.ventanaAgregarCliente.show() # Ventana de edición de los datos    
    #===========================================================================

    def click_OK(self, widget):
        
        try:
            int(self.ci.get_text())
        except:
            ventana_mensaje(self.ventanaAgregarCliente, gtk.MESSAGE_ERROR, gtk.BUTTONS_CLOSE, 'El campo de CI debe ser numerico')
            return 
        # verificamos que los datos no esten vacios
        if (self.ci.get_text() == '') or (self.nombre.get_text() == ''):
            ventana_mensaje(self.ventanaAgregarCliente, gtk.MESSAGE_ERROR, gtk.BUTTONS_CLOSE, 'Los campos ''CI'' y ''Nombre'' no pueden estar vacios')
        
        else:
            if self.nuevo:
                # Se recuperan todos los datos, para ver si el usuario ya existe
                sql='SELECT ci FROM clientes where ci = %s'
                self.cursor.execute(sql%(self.ci.get_text()))
                resultado = self.cursor.fetchall()
                
                if resultado:
                    ventana_mensaje(self.ventanaAgregarCliente, gtk.MESSAGE_ERROR, gtk.BUTTONS_CLOSE, 'Ya existe un usuario con esa CI')
                else:                                                               
                    entry = gtk.Bin.get_child(self.comboTipoPago)                        
                    sql="INSERT INTO clientes (ci, nombre, apellido, telefono, movil, email, direccion, ciudad,tipopago) VALUES ('%s','%s','%s','%s','%s','%s','%s','%s','%s')"
                    self.cursor.execute(sql%(self.ci.get_text(),self.nombre.get_text(),self.apellido.get_text(),self.tel.get_text(),
                        self.cel.get_text(),self.email.get_text(),self.dir.get_text(),self.ciudad.get_text(),entry.get_text()))
                    self.conexion.commit()                        
                    gtk.Object.destroy(self.ventanaAgregarCliente)                           
                    if self.vistaClientes:
                        self.cargarVista(False) # Se llena la vista con los registros (False indica que no es la carga inicial)                            
            else:
                # Se recuperan todos los datos, para ver si ya existe un usuario con ese ruc
                sql='SELECT ci FROM clientes WHERE ci = %s AND ci != %s'
                self.cursor.execute(sql%(self.ci.get_text(),self.ciAnt))
                resultado = self.cursor.fetchall()
                
                if resultado:
                    ventana_mensaje(self.ventanaAgregarCliente, gtk.MESSAGE_ERROR, gtk.BUTTONS_CLOSE, 'Ya existe un usuario con ese CI')
                else:                       
                    entry = gtk.Bin.get_child(self.comboTipoPago)        
                    sql = '''UPDATE clientes SET ci = %s , nombre = %s,apellido = %s, telefono = %s, movil = %s, email = %s,
                    direccion = %s, ciudad = %s, tipopago = %s WHERE ci = %s'''
                    self.cursor.execute(sql%(self.ci.get_text(),self.nombre.get_text(),self.apellido.get_text(),self.tel.get_text(),
                        self.cel.get_text(),self.email.get_text(),self.dir.get_text(),self.ciudad.get_text(),entry.get_text(),self.ciAnt))
                    self.conexion.commit()
    
                    gtk.Object.destroy(self.ventanaAgregarCliente)
                    self.cargarVista(False) # Se llena la vista con los registros (False indica que no es la carga inicial)
                                
    
    #===========================================================================    
    def cerrar_agregarCliente(self,widget):
        self.ventanaAgregarCliente.destroy()

    #===========================================================================
    
    def cargarVista(self, inicial):

        # Tipos de dato de cada columna. CI, Nombre, Telefono, Movil, email, Direccion, Ciudad, Tipo dde pago
        lista = gtk.ListStore(str,str,str,str,str,str,str,str,str) 
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
        
        
        try:
           
            sql='SELECT * FROM clientes'
            self.cursor.execute(sql)
            resultado = self.cursor.fetchall()

            for registro in resultado:
                lista.append([registro[0],registro[1],registro[2],registro[3],registro[4],registro[5],registro[6],registro[7],registro[8]])
            # Arma la vista con las columas y lista de elementos
            self.vistaClientes.set_model(lista)
            if inicial:
                self.vistaClientes.append_column(columna0)
                self.vistaClientes.append_column(columna1)
                self.vistaClientes.append_column(columna2)
                self.vistaClientes.append_column(columna3)
                self.vistaClientes.append_column(columna4)
                self.vistaClientes.append_column(columna5)
                self.vistaClientes.append_column(columna6)
                self.vistaClientes.append_column(columna7)
                self.vistaClientes.append_column(columna8)
                
                # Permite ordenar por columnas
                columna0.set_sort_column_id(0)
                columna1.set_sort_column_id(1)
                columna2.set_sort_column_id(2)
                columna8.set_sort_column_id(3)

            self.vistaClientes.show()
        except:
            #muestra una venta de error si no se puede conectar a la base de datos
            ventana_mensaje(self.ventanaClientes, gtk.MESSAGE_ERROR, gtk.BUTTONS_CLOSE, 'No se ha podido conectar a la base de datos')
    #===========================================================================
    def cargarTipoPago(self):

        lista = gtk.ListStore(str) # Combo de string.
        
        sql='SELECT nombrepago FROM tipospago'
        self.cursor.execute(sql)
        resultado = self.cursor.fetchall()
        
        # Se arma la lista con los valores del combo, son las columnas de la vista
        for registro in resultado:
            lista.append([registro[0]])
       

        self.comboTipoPago.set_model(lista)
        self.comboTipoPago.set_entry_text_column(0)
        self.comboTipoPago.set_active(0)
        
        entry = gtk.Bin.get_child(self.comboTipoPago)
        entry.set_editable(False)