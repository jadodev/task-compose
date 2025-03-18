FROM node:18

# Instalar Git para clonar el repositorio
RUN apt-get update && apt-get install -y git

# Definir directorio de trabajo
WORKDIR /app

# Clonar el repositorio
RUN git clone https://github.com/jadodev/crud-task.git /app

# Instalar dependencias
RUN npm install

# Compilar la aplicación
RUN npm run build

# Exponer el puerto 3000
EXPOSE 3000

# Comando para iniciar la aplicación
CMD ["npm", "run", "start"]
