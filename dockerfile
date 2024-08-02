# Usar una imagen base de Node
FROM node:20-alpine

# Establecer el directorio de trabajo dentro del contenedor
WORKDIR /usr/src/app

# Copiar package.json y package-lock.json
COPY package*.json ./

# Instalar dependencias
RUN npm install

# Copiar el resto del código de la aplicación
COPY . .

# Exponer el puerto en el que la aplicación correrá
EXPOSE 5173

# Comando para correr la aplicación
CMD ["npm", "run", "dev"]