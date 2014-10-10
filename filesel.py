#!/usr/bin/env python
# ejemplo filesel.py

import pygtk
pygtk.require('2.0')
import gtk
import sqlite3
import imghdr as tipo
from comun import ventana_mensaje
class FileSelection(object):
	    # Obtener el nombre del fichero seleccionado e imprimirlo a la consola
      def file_ok_sel(self, w):
        archivo = unicode(self.filew.get_filename(),"utf-8")
        print archivo
        gtk.Object.destroy(self.filew)
        if archivo:
          tipoImg = tipo.what(archivo)
          if tipoImg == None:
              ventana_mensaje(self.filew, gtk.MESSAGE_ERROR, gtk.BUTTONS_CLOSE, 'El archivo seleccionado no es una imagen')  
          else:
              try:
                  # fin = open(archivo,"r")#abre archivo ingresar a base de datos
                  # img = sqlite3.Binary(fin.read()) 
                  # fin.close() #cierra el archivo
                  imgdata = open(archivo, "rb").read()
                  print len(imgdata)
                  buff = sqlite3.Binary(imgdata)
              except IOError: #excepcion en caso de error
                  ventana_mensaje(self.filew, gtk.MESSAGE_ERROR, gtk.BUTTONS_CLOSE, 'No se puede abrir archivo %s' % self.foto.get_filename())
              sql='SELECT * FROM fotos WHERE ci = %s'
              self.cursor.execute(sql%self.fila[0])
              resultado = self.cursor.fetchall()
              if not resultado:
                  self.cursor.execute('INSERT INTO fotos VALUES(?,?);', (self.fila[0],buff))#ejecuta sentencia de ingreso de imagen
                  self.conexion.commit()#cierra transaccion
                  ventana_mensaje(self.filew, gtk.MESSAGE_INFO, gtk.BUTTONS_OK, 'La foto fue agregada correctamente.')
                  
              else:
                  self.cursor.execute('UPDATE fotos SET foto = ? WHERE ci = ?;',(buff,self.fila[0]))#ejecuta sentencia de ingreso de imagen
                  self.conexion.commit()#cierra transaccion
                  ventana_mensaje(self.filew, gtk.MESSAGE_INFO, gtk.BUTTONS_OK, 'Foto actualizada correctamente.')
      def destroy(self, widget):
        gtk.Object.destroy(self.filew)

      def __init__(self, fila, cursor, conexion):
        self.fila = fila
        self.cursor = cursor
        self.conexion = conexion
        # Creamos un nuevo control de seleccion de fichero
        self.filew = gtk.FileSelection("File selection")

        self.filew.connect("destroy", self.destroy)
        # Conectar ok_button al metodo file_ok_sel
        self.filew.ok_button.connect("clicked", self.file_ok_sel)

        # Conectar cancel_button para destruir el control
        self.filew.cancel_button.connect("clicked",
                                     lambda w: self.filew.destroy())

        # Fijamos el nombre de fichero, como si fuese un dialogo de guardado,
        # y damos un nombre por defecto
        self.filew.set_position(gtk.WIN_POS_CENTER_ALWAYS)
        self.filew.show()
