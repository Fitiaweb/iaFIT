# Utiliser une image Node.js officielle
FROM node:18

# Définir le répertoire de travail
WORKDIR /app

# Copier les fichiers du projet
COPY package*.json ./
COPY . .

# Installer les dépendances
RUN npm install

# Construire le projet (si nécessaire)
RUN npm run build

# Exposer le port utilisé par l'application
EXPOSE 3000

# Commande de démarrage
CMD ["npm", "start"]
