# 1. Empezar desde la imagen oficial de n8n que ya usas
FROM n8nio/n8n:latest

# 2. Cambiar al usuario root para poder instalar programas
USER root

# 3. Instalar las librerías gráficas y de sistema que Chromium necesita
RUN apt-get update && \
    apt-get install -y \
    # Dependencias clave para Puppeteer/Chromium
    libnss3 \
    libxss1 \
    libasound2 \
    libatk-bridge2.0-0 \
    libgtk-3-0 \
    libgbm-dev && \
    # Limpiar para mantener la imagen ligera
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# 4. Devolver el control al usuario 'node' por seguridad y buenas prácticas
USER node
