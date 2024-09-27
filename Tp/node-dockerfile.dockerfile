
# Utilisation de l'image 
FROM  node

# Définir le répertoire de travail dans le conteneur
WORKDIR /result/views/app

# Copier le fichier requirements.txt dans le répertoire de travail
# Cela permet de télécharger les dépendances
COPY /result/views/package.json .

# Télécharger les dépendances nécessaires à la compilation 
RUN node npm install

# Copier les fichier sources de l'application dans notre espace de travail
COPY src ./worker

# Exposer le port 8080 pour permettre l'accès à l'application
EXPOSE 8084

CMD ["node","-n"]


