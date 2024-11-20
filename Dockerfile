# Usa una imagen base ligera y actualizada
FROM node:18-alpine

# Establece el directorio de trabajo en el contenedor
WORKDIR /usr/src/app

# Copia package.json y package-lock.json para aprovechar el caché
COPY package*.json ./

# Instala dependencias y limpia el caché de npm
RUN npm install && npm cache clean --force

# Copia el resto del código de la aplicación
COPY . .

# Expone el puerto en el que se ejecuta la aplicación
EXPOSE 3000

# Comando para ejecutar la aplicación
CMD ["npm", "start"]
