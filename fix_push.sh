#!/bin/bash
# Script generado por tarea automatica - eleva-postventa-daily-push
# Ejecutar en caso de que el push automatico falle por lock files

cd /Users/mipinza/postventa

echo "Eliminando lock files obsoletos..."
rm -f .git/index.lock .git/HEAD.lock

echo "Estado del repositorio:"
git log --oneline -3

echo ""
echo "Ejecutando push a GitHub..."
git push origin main --force

echo ""
echo "Push completado. Verifica en: https://github.com/maxipinza-max/postventa"
