import sys
from cx_Freeze import setup, Executable

build_exe_options = {"excludes": ["tkinter"],"include_files":["img","views","pictures","DB"]}

base = None
if sys.platform == "win32":
    base = "Win32GUI"
    executable = [Executable("MCGestionClientes.py", base=base, icon="img\\zumbaIcon.ico")]
else:
    executable = [Executable("MCGestionClientes.py", base=base, icon="img/zumbaIcon.ico")]


setup(name = "MC Gestion Clientes",
	  version = "1.0",
	  author="Alberto Denis Colman Meza",
	  description = "Sistema de gestion de clientes para locales de dance and fitness",
	  options = {"build_exe": build_exe_options},
	  executables = executable,)