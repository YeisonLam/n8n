# Usa la imagen oficial de n8n
FROM n8nio/n8n:latest

# Establece el directorio de trabajo
WORKDIR /home/node/

# Copia los archivos del proyecto (opcional)
COPY . .

# Expone el puerto
EXPOSE 5678

# Variables base
ENV N8N_HOST=0.0.0.0
ENV N8N_PORT=5678
ENV N8N_PROTOCOL=https
ENV NODE_ENV=production

# Monta la carpeta donde se guardan los datos
VOLUME ["/home/node/.n8n"]

# Comando de inicio
CMD ["n8n", "start"]
