
# Utilisation de l'image python
FROM python

# Définir le répertoire de travail dans le conteneur
WORKDIR /vote/app

# Copier le fichier requirements.txt dans le répertoire de travail
# Cela permet de télécharger les dépendances
COPY /vote/requirements.txt .

# Télécharger les dépendances nécessaires à la compilation 
RUN flask 

# Copier les fichier sources de l'application dans notre espace de travail
COPY src ./worker

# Exposer le port 8080 pour permettre l'accès à l'application
EXPOSE 8083


CMD [ "gunicorn <module_name>:<instance_name> -b 0.0.0.0:80 --log-file - --access-logfile - --workers 4 --keep-alive 0" ]

