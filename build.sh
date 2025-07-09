#!/bin/bash

# Nettoyage initial
rm -f mon-livre.epub
rm -rf mon-livre-epub/

# Génération de l'ePub
pandoc mondocument.org \
  --from org \
  --to epub3 \
  --epub-cover-image=images/cover.png \
  -o mon-livre.epub \
  --standalone \
  --resource-path=.

# Vérification
unzip mon-livre.epub -d mon-livre-epub > /dev/null
echo "✅ EPUB généré avec succès !"
echo "🔍 Ouvre 'mon-livre.epub' dans Apple Books ou Calibre pour vérifier."
