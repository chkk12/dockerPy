
# Image de base Python
FROM python:3.12-slim

# Dossier de travail dans le conteneur
WORKDIR /app

# Copier les fichiers du projet
COPY requirements.txt .

# Installer les dépendances
RUN pip install --no-cache-dir -r requirements.txt

# Copier le code du serveur
COPY app.py .

# Indiquer le port utilisé
EXPOSE 5000

# Lancer le serveur web
CMD ["python", "app.py"]
