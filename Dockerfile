# Usa una imagen Node.js ligera y actualizada
FROM node:18-alpine

# Establece el directorio de trabajo
WORKDIR /usr/src/app

# Copia y aprovecha el caché para dependencias
COPY package*.json ./

# Instala dependencias y limpia el caché
RUN npm install && npm cache clean --force

# Copia el resto del código al contenedor
COPY . .

# Expone el puerto de la aplicación
EXPOSE 3000

# Comando por defecto para ejecutar la aplicación
CMD ["npm", "start"]
