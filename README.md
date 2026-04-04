# Создаем папку для репозитория
mkdir ~/lab_repo && cd ~/lab_repo

# Инициализируем Git
git init

# Создаем структуру папок
mkdir -p lab_01/{build,src,doc,cmake}
mkdir -p lab_02/{build,src,doc,cmake}

# Создаем файлы отчетов
echo "# Отчет по лабораторной работе №1" > lab_01/doc/report.md
echo "# Отчет по лабораторной работе №2" > lab_02/doc/report.md

# Создаем файл README
cat > README.md << 'EOF'
# Лабораторные работы

## Структура
- `lab_01/` - первая лабораторная работа
- `lab_02/` - вторая лабораторная работа
EOF
