mkdir ~/lab_repo && cd ~/lab_repo

git init

mkdir -p lab_01/{build,src,doc,cmake}
mkdir -p lab_02/{build,src,doc,cmake}

echo "# Отчет по лабораторной работе №1" > lab_01/doc/report.md
echo "# Отчет по лабораторной работе №2" > lab_02/doc/report.md

cat > README.md << 'EOF'

