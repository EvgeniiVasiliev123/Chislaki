#!/bin/bash

echo "=== Перенос изменений из stg в prd ==="

# Переключаемся на ветку prd
git checkout prd

# Получаем последние изменения с удаленного репозитория (опционально)
git pull origin prd || true

# Сливаем изменения из stg в prd
git merge stg -m "Merge stg into prd: $(date)"

# Создаем тег с текущей датой и временем
TAG="prd-$(date +%Y%m%d-%H%M%S)"
git tag "$TAG" -m "Release from stg to prd at $(date)"

# Отправляем изменения на GitHub
git push origin prd
git push origin "$TAG"

# Возвращаемся обратно на dev
git checkout dev

echo "=== Готово! ==="
echo "Создан тег: $TAG"
echo "Ветка prd обновлена"
