# Proyecto de Laboratorio - Proxmox: DNS, DHCP, Web y FTP

**Autor:** Esteban Larco, Andy Laglaguano
**Carrera:** Ingeniería en Tecnologías de la Información
**Fecha:** 08 de Noviembre 2025

## Descripción
Este proyecto implementa una red virtual completa dentro de **Proxmox VE**, con servicios de infraestructura esenciales:
- **DNS (Bind9)**
- **DHCP (ISC DHCP Server)**
- **WEB (Apache2)**
- **FTP (vsftpd)**

Cada servicio se despliega en un contenedor independiente (CT) dentro de una red interna 10.10.10.0/24.

## Estructura del repositorio
See folders: scripts/, config/, evidencias/, informe/

## Cómo usar
1. Copiar el contenido de `config/` a los respectivos `/etc/` de cada contenedor.
2. Ejecutar los scripts en `scripts/` en el contenedor correspondiente (dar permisos con `chmod +x`).
3. Probar los servicios según el plan E2E del informe.

## Contacto
Esteban Larco, Andy Laglaguano
