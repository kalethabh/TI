# Usa una imagen base actualizada y ligera
FROM node:18-slim

# Establece el directorio de trabajo en el contenedor
WORKDIR /usr/src/app

# Copia package.json y package-lock.json primero para aprovechar el caché
COPY package*.json ./

# Instala las dependencias de la aplicación y limpia el caché de npm
RUN npm install && npm cache clean --force

# Copia el resto del código de la aplicación al directorio de trabajo
COPY . .

# Expone el puerto en el que se ejecuta la aplicación
EXPOSE 3000

# Define el comando para ejecutar la aplicación
CMD ["npm", "start"]
