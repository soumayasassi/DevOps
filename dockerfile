# Utilisation de l'image Node.js 16 sur Alpine Linux comme base
FROM node:16-alpine

# Définition du répertoire de travail dans le conteneur
WORKDIR /app

# Copie de tous les fichiers du contexte de build dans le répertoire de travail
COPY . /app

# Installation des dépendances npm
RUN npm install

# Exécution de la construction du projet (à adapter en fonction de votre application)
RUN npm run build-dev

# Exposition du port 5000 sur le conteneur
EXPOSE 5000

# Commande par défaut pour démarrer l'application
CMD ["npm", "start"]
