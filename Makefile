# Makefile for denisarnaud.com (Hugo + GitHub Pages)

HUGO ?= hugo
PUBLIC_DIR := public

.PHONY: all help build serve clean deploy

all: build

help:
	@echo "Commandes disponibles :"
	@echo "  make build      - Compile le site statique avec Hugo dans $(PUBLIC_DIR)"
	@echo "  make serve      - Lance le serveur de développement local avec rechargement à chaud"
	@echo "  make clean      - Supprime le dossier de build $(PUBLIC_DIR) et cache"
	@echo "  make deploy     - Pousse les modifications sur origin/main (déclenche la CI GitHub Pages)"

build:
	@echo "==> Compilation du site Hugo..."
	$(HUGO) --minify
	@echo "==> Compilation réussie dans $(PUBLIC_DIR)"

serve:
	@echo "==> Démarrage du serveur de développement local..."
	$(HUGO) server -D

clean:
	@echo "==> Nettoyage..."
	rm -rf $(PUBLIC_DIR) resources
	@echo "==> Nettoyage terminé."

deploy:
	@echo "==> Envoi des modifications vers GitHub..."
	git add .
	git commit -m "Update site content" || true
	git push origin main
	@echo "==> Poussé sur GitHub. La CI GitHub Pages déploie automatiquement le site."
