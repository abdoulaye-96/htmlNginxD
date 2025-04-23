# Utilise l'image officielle Nginx
FROM nginx:alpine

# Copie ton fichier HTML dans le conteneur
COPY index.html /usr/share/nginx/html/

# Copie la config Nginx personnalisée (si utilisée)
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Expose le port 80 (port par défaut de Nginx)
EXPOSE 80

# Commande pour démarrer Nginx
CMD ["nginx", "-g", "daemon off;"]