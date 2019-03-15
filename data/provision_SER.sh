!#/bin/bash

# Instalación de dependiencias del Software
yum update
yum install -y java libz.so.1 libpthread.so.0 libdl.so.2 libm.so.6 libc.so.6 libgtk-x11-2.0.so.0 libXtst.so.6 wget

# Bajamos el software 

wget https://download.sos-berlin.com/JobScheduler.1.12/JobScheduler_linux-x64.1.12.8.tar.gz

# Crear usuario
# #  Credenciales de Visudo es necesario habilitarlo no se como se agrega desde un script.
adduser JobScheduler

# Con la finalidad de poder lanzar las X11 por ssh.
# Necesario poner lo siguientes valores
# # ForwardX11 yes
# # X11Forwarding yes


