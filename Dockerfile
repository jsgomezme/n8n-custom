# 1. Empezar desde la imagen oficial de n8n (basada en Alpine)
FROM n8nio/n8n:latest

# 2. Cambiar a usuario root para instalar paquetes
USER root

# 3. Usar el gestor de paquetes de Alpine (apk) para instalar las dependencias
#    --no-cache es una buena práctica para mantener la imagen pequeña.
#    Instalamos el paquete 'chromium' que ya viene preparado para Alpine.
RUN apk add --no-cache \
    chromium \
    nss \
    freetype \
    harfbuzz \
    json-glib

# 4. Volver al usuario normal de n8n por seguridad
USER node
