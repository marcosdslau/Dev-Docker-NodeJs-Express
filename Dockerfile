# Use uma imagem base do Node.js
FROM node:alpine

# Diretório de trabalho dentro do contêiner

WORKDIR /usr/app

# Copie o package.json e o package-lock.json para o diretório de trabalho
COPY package*.json ./

# Instale as dependências
RUN npm install

# Copie o restante dos arquivos do código fonte
COPY . .

# Porta em que a aplicação estará escutando
EXPOSE 3000

# Comando para iniciar a aplicação
CMD ["npm", "start"]
