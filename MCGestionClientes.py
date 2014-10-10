#!/usr/bin/python
# -*- coding: utf-8 -*-
import pygtk
pygtk.require('2.0')
import gtk
import sqlite3
import sys
import pango
import md5

from time import sleep
from comun import ventana_mensaje
from clients import Clientes
from splashScreen import splashScreen
from createDatabase import CreateDatabase

class IniciarSesion(object):
    #===========================================================================
    def __init__(self):        
        self.sistemaop = sys.platform#detectamos el sistema operativo para saber como pasar la ruta de archivos correctamente
        self.builder = gtk.Builder()
        if self.sistemaop == 'linux2':
            self.builder.add_from_file("views/login.glade")                        
        else:
            self.builder.add_from_file("views\\login.glade")
        self.ventanaLogin = self.builder.get_object("ventanaLogin")
        self.ventanaLogin.set_decorated(False)
        self.ventanaLogin.set_border_width(1)
        self.usuarioEntry = self.builder.get_object("usuario")
        self.passwordEntry = self.builder.get_object("contraseña")
        self.labelUser = self.builder.get_object("label_user")
        self.labelPass = self.builder.get_object("label_pass")
        self.labelUser.modify_font(pango.FontDescription("monospace 12"))
        self.labelPass.modify_font(pango.FontDescription("monospace 12"))
        self.imagen_login = self.builder.get_object("iLogo")
        if self.sistemaop == 'linux2':
            self.imagen_login.set_from_file("img/zumba_logo.png")
            self.conexion = sqlite3.connect('DB/zumba.db')
        else:
            self.imagen_login.set_from_file("img\\zumba_logo.png")
            self.conexion = sqlite3.connect('DB\\zumba.db')

        self.cursor = self.conexion.cursor()

        db = CreateDatabase(self.conexion, self.cursor)
        self.builder.connect_signals(self)
        self.ventanaLogin.show()
    #============================================================================
    
    def click_aceptar(self, widget):
        self.usuario = self.usuarioEntry.get_text()
        self.passwd = self.passwordEntry.get_text()
        if self.usuario == '' or self.passwd == '':
            ventana_mensaje(self.ventanaLogin, gtk.MESSAGE_ERROR, gtk.BUTTONS_OK, 'Debe ingresar usuario y contraseña')
        else:
            sql="SELECT password FROM usuarios WHERE user = '%s'"
            self.cursor.execute(sql % (self.usuario))
            resultado = self.cursor.fetchone()
            if not resultado:
                ventana_mensaje(self.ventanaLogin, gtk.MESSAGE_ERROR, gtk.BUTTONS_OK, 'Combinación erronea de usuario y password!')
            else:
                if md5.new(self.passwd).hexdigest() == resultado[0]:                    
                    self.ventanaLogin.hide()
                    #ventana_mensaje(self.ventanaLogin, gtk.MESSAGE_INFO, gtk.BUTTONS_OK, 'Bienvenido al sistema %s!' % self.usuario)                    
                    Clientes()
                else:
                    ventana_mensaje(self.ventanaLogin, gtk.MESSAGE_ERROR, gtk.BUTTONS_OK, 'Combinación erronea de usuario y password!')
        
    #==========================================================================
    def cerrar_ventana(self, widget):
        gtk.main_quit()
if __name__ == "__main__":
    splScr = splashScreen()
    #If you don't do this, the splash screen will show, but wont render it's contents
    while gtk.events_pending():
        gtk.main_iteration()
    #Here you can do all that nasty things that take some time.
    sleep(0.5) 
    app = IniciarSesion()
    #We don't need splScr anymore.
    splScr.window.destroy() 
    gtk.main()