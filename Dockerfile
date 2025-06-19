# Empezar desde la imagen oficial que ya conocemos
FROM n8nio/n8n:latest

# Cambiar a usuario root para instalar paquetes (esto SÍ funciona aquí)
USER root

# Instalar las dependencias de sistema para el navegador
RUN apt-get update && \
    apt-get install -y \
    libnss3 \
    libxss1 \
    libasound2 \
    libatk-bridge2.0-0 \
    libgtk-3-0 \
    libgbm-dev && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Volver al usuario normal de n8n por seguridad
USER node
