#!/usr/bin/python
# -*- coding: utf-8 -*-
import gtk
import sys
class About(gtk.Window): 
    def __init__(self):
        self.sistemaop = sys.platform        
        about = gtk.AboutDialog()
        about.set_program_name("MC Gestion Clientes")
        about.set_version("1.0")
        about.set_copyright("(c) Alberto Colmán")
        about.set_comments("MC Gestion Clientes es una aplicación orientada al manejo y registro de clientes y sus pagos")
        about.set_website("albertocolman81@gmail.com")
        if self.sistemaop == 'linux2':
            about.set_logo(gtk.gdk.pixbuf_new_from_file("img/zumbaIcon.jpg"))
        else:
            about.set_logo(gtk.gdk.pixbuf_new_from_file("img\\zumbaIcon.jpg"))
        about.run()
        about.destroy()
if __name__ == '__main__':
    About()
    gtk.main()