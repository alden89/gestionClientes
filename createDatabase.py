#!/usr/bin/python
# -*- coding: utf-8 -*-
import sqlite3
import md5

class CreateDatabase(object):
  def __init__(self, conexion, cursor):		
		#tabla que contiene el acceso para loguearse a la aplicación
		sql="CREATE TABLE IF NOT EXISTS usuarios(user VARCHAR PRIMARY KEY, password VARCHAR)"
		cursor.execute(sql)
		#tabla que contiene los datos de los clientes del local
		sql = """CREATE TABLE IF NOT EXISTS clientes (ci varchar(7) NOT NULL,
        	nombre varchar(100) DEFAULT NULL,
        	apellido varchar(100) DEFAULT NULL,
        	telefono varchar(20) DEFAULT NULL,
        	movil varchar(20) DEFAULT NULL,
        	email varchar(100) DEFAULT NULL,
        	direccion varchar(250) DEFAULT NULL,
        	ciudad varchar(50) DEFAULT NULL,
        	tipopago varchar(20) DEFAULT NULL,
        	PRIMARY KEY (ci)
        	)"""
		cursor.execute(sql)
		#tabla con las fotos de los clientes
		sql = """CREATE TABLE IF NOT EXISTS fotos( ci VARCHAR PRIMARY KEY DEFAULT NULL, foto BLOB)"""
		cursor.execute(sql)
		sql = """CREATE TABLE IF NOT EXISTS numeroRecibo( numero INTEGER DEFAULT 1)"""
		cursor.execute(sql)
		sql = """CREATE TABLE IF NOT EXISTS pagos( 
        	ci VARCHAR NOT NULL, 
        	nombre VARCHAR DEFAULT NULL, 
        	apellido VARCHAR DEFAULT NULL, 
        	monto INTEGER DEFAULT NULL, 
        	fechaPago TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP, 
        	PRIMARY KEY ( ci, fechaPago)
        	)"""
		cursor.execute(sql)
		sql = """DROP TABLE IF EXISTS tipospago"""
		cursor.execute(sql)
		sql = """CREATE TABLE IF NOT EXISTS tipospago( tipopago INTEGER PRIMARY KEY, nombrepago VARCHAR DEFAULT NULL)"""
		cursor.execute(sql)
		sql="INSERT OR IGNORE INTO usuarios VALUES('%s', '%s')"
		cursor.execute(sql % ('admin', md5.new('admin').hexdigest()))
		conexion.commit()
		sql="INSERT OR IGNORE INTO tipospago (nombrepago) VALUES('Diario')"
		cursor.execute(sql)
		conexion.commit()
		sql="INSERT OR IGNORE INTO tipospago (nombrepago) VALUES('Semanal')"
		cursor.execute(sql)
		conexion.commit()
		sql="INSERT OR IGNORE INTO tipospago (nombrepago) VALUES('Mensual')"
		cursor.execute(sql)
		conexion.commit()
		sql='SELECT numero FROM numeroRecibo'
		cursor.execute(sql)
		resultado = cursor.fetchone()
		if not resultado:
			sql="INSERT OR IGNORE INTO numeroRecibo VALUES(1)"
			cursor.execute(sql)
			conexion.commit()