# Use a imagem oficial do Node.js como base
FROM node:18-alpine

# Define o diretório de trabalho no container
WORKDIR /app

# Copie o arquivo de dependências para o container
COPY package.json package-lock.json ./

# Instale as dependências
RUN npm install

# Copie todo o código do projeto para o container
COPY . .

# Exponha a porta 3000 para o host
EXPOSE 3000

# Comando para iniciar a aplicação React
CMD ["npm", "start"]
