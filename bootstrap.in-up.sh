#/bin/bash

echo "Инсталятор и обновлятор шаблона разработки"
echo "Vanessa Bootstrap Install or Upgrade"
echo "подключает bootstrap к текущему репозиторию и обновляет его из ветки master"

if git rev-parse --git-dir > /dev/null 2>&1; then
  echo "Текущий каталог находится под управлением GIT - доступна возможность инсталяции и обновления"
else
  echo "Текущий каталог не является GIT репозиторием - необходимо выполнить команду git init для инициалиации"
  echo "дальнейшая работа невозможна"
  exit 42 # "код возврата - пасхальное яйцо, для понимающих"
fi

if [ ! -f ./README.md ]; then
    echo "Основной файл README не найден - создаю заглушку"
    echo "TODO - описать репозиторий" > ./README.md
    git add ./README.md
    git commit -m "автоматически добавлена заглушка файла README"
fi

if [ ! -f ./LICENSE.txt ]; then
    echo "Основной файл LICENSE не найден - создаю заглушку"
    echo "TODO - описать лицензию" > ./LICENSE.txt
    git add ./LICENSE.txt
    git commit -m "автоматически добавлена заглушка файла LICENSE"
fi

if [ ! -f ./.gitignore ]; then
    echo "Основной файл игнорирования не найден - создаю минимальный"
    echo "*.exe" > ./.gitignore
    git add ./.gitignore
    git commit -m "автоматически добавлена заглушка файла игнорирования"
fi

if [ ! -f ./.gitattributes ]; then
    echo "Основной файл атрибутов не найден - создаю атрибуты защиты"
    echo "" > ./.gitattributes
    echo "README.md merge=ours" >> ./.gitattributes
    echo ".gitmodules merge=ours" >> ./.gitattributes
    echo ".gitignore merge=ours" >> ./.gitattributes
    echo ".gitattributes merge=ours" >> ./.gitattributes
    echo "LICENSE.txt merge=ours" >> ./.gitattributes
    git add ./.gitattributes
    git commit -m "автоматически добавлена заглушка файла атрибутов репозитория"
fi

echo "Включаю поддержку русских имен файлов (всегда и принудительно)"
git config --local core.quotepath false


if git ls-remote --quiet --exit-code vanessa-bootstrap > /dev/null; then
    echo "Подписка на обновления шаблона vanessa-bootstrap установлена корректно"
else
    echo "Не обнаружена подписка на обновления шаблона - добавляю подписку"
    git remote add vanessa-bootstrap https://github.com/silverbulleters/vanessa-bootstrap.git
fi

echo "Устанавливаю настройки объединения"
git config --local merge.ours.driver true

echo "Получаю последние измененения шаблона"
git fetch --no-tags vanessa-bootstrap

echo "Получаю изменения шаблона - без помещения"
echo "(Для отката используйте команду 'git checkout .')"

git pull --no-tags --no-commit vanessa-bootstrap master
