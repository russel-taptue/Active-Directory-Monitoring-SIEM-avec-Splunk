#!/bin/bash

# Définir l'URL pour télécharger Splunk (version .deb pour Ubuntu)
SPLUNK_URL="https://download.splunk.com/products/splunk/releases/8.2.5/linux/splunk-8.2.5-87e1a705e2ef-linux-2.6-x86_64.deb"

# Télécharger le fichier .deb
echo "Téléchargement de Splunk..."
wget -O splunk.deb "$SPLUNK_URL"

# Installer Splunk
echo "Installation de Splunk..."
sudo dpkg -i splunk.deb

# Activer Splunk au démarrage
echo "Activation de Splunk pour démarrer au lancement du système..."
sudo systemctl enable splunk

# Démarrer Splunk
echo "Démarrage de Splunk..."
sudo systemctl start splunk

# Fournir l'URL d'accès à l'interface Splunk
echo "Splunk a été installé et démarré. Accédez à Splunk via : http://<VOTRE_IP>:8000"
