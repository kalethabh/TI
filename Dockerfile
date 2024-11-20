# Use un entorno de ejecución oficial de Node.js como imagen principal
 FROM node:14 

# Establezca el directorio de trabajo en el contenedor
 WORKDIR /usr/src/app 

# Copie package.json y package-lock.json al directorio de trabajo
 COPY package*.json ./ 

# Instale las dependencias de la aplicación
 RUN npm install 

# Copie el resto del código de la aplicación al directorio de trabajo
 COPY . . 

# Exponga el puerto en el que se ejecuta la aplicación
 EXPOSE 3000 

# Defina el comando para ejecutar la aplicación
 CMD [ "npm" , "start" ]
