#!/bin/bash

echo "=== Перенос изменений из dev в stg ==="

# Переключаемся на ветку stg
git checkout stg

# Получаем последние изменения с удаленного репозитория (опционально)
git pull origin stg || true

# Сливаем изменения из dev в stg
git merge dev -m "Merge dev into stg: $(date)"

# Создаем тег с текущей датой и временем
TAG="stg-$(date +%Y%m%d-%H%M%S)"
git tag "$TAG" -m "Release from dev to stg at $(date)"

# Отправляем изменения на GitHub
git push origin stg
git push origin "$TAG"

# Возвращаемся обратно на dev для продолжения работы
git checkout dev

echo "=== Готово! ==="
echo "Создан тег: $TAG"
echo "Ветка stg обновлена"

