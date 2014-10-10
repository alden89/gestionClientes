import gtk
import sys
class splashScreen():     
    def __init__(self):
        self.sistemaop = sys.platform
        self.img=gtk.Image()
        if self.sistemaop == 'linux2':
            self.img.set_from_file("img/zumba.png")
        else:
            self.img.set_from_file("img\\zumba.png")
        self.event = gtk.EventBox()
        self.event.modify_bg(gtk.STATE_NORMAL, gtk.gdk.color_parse('white'))
        self.event.add(self.img)
        self.event.set_size_request(400,403)

        self.window = gtk.Window()
        self.window.modify_bg(gtk.STATE_NORMAL, gtk.gdk.color_parse('black'))
        self.window.set_position(gtk.WIN_POS_CENTER)
        self.window.add(self.event)
        self.window.set_decorated(False)
        self.window.set_border_width(1)
        self.window.show_all()
        self.window.present()