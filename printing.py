#!/usr/bin/env python
# -*- coding: iso-8859-1 -*-
 
import pygtk
pygtk.require('2.0')
import gtk

from comun import Recibo
 
class ImprimirRecibo:
    def __init__(self,numeroRecibo, monto, ciudad, dia, mes, year, cliente, montoLetras, conexion, cursor, padre):
        self.conexion, self.cursor, self.padre = conexion, cursor, padre
        self.numeroRecibo, self.monto, self.ciudad, self.dia, self.mes, self.year, self.cliente, self.montoLetras = numeroRecibo, monto, ciudad, dia, mes, year, cliente, montoLetras
        self.do_print()

    def do_print(self):
        print_op = gtk.PrintOperation()
        print_op.set_n_pages(1)
        print_op.connect("draw_page", self.print_text)
        res = print_op.run(gtk.PRINT_OPERATION_ACTION_PRINT_DIALOG, self.padre)
        if res == gtk.PRINT_OPERATION_RESULT_APPLY:
            sql='UPDATE numeroRecibo SET numero = numero +1'
            self.cursor.execute(sql,)
            self.conexion.commit() 
    
    def print_text(self, operation=None, context=None, page_nr=None):
        self.pangolayout = context.create_pango_layout()
        self.format_text()
        cairo_context = context.get_cairo_context()
        cairo_context.show_layout(self.pangolayout)
        return
 
    def format_text(self):
        recibo = Recibo(self.numeroRecibo, self.monto, self.ciudad, self.dia, self.mes, self.year, self.cliente, self.montoLetras)
        self.pangolayout.set_text(unicode(recibo.resultado, "utf-8")) 
 
def main():
    gtk.main()
    return 0
 
if __name__ == "__main__":
    ImprimirRecibo()
    main()