#!/bin/bash

echo "🔧 Initialisation de l’environnement OmegaAI..."

# Vérifie Docker
if ! docker info >/dev/null 2>&1; then
  echo "❌ Docker ne fonctionne pas, vérifie le service."
  exit 1
fi

# Démarre Minikube
echo "🚀 Lancement de Minikube..."
minikube start --driver=docker

# Affiche le statut
echo "📊 Statut du cluster Minikube :"
minikube status

# Prépare la suite pour Warp
echo "✅ Environnement prêt pour Warp AI."
