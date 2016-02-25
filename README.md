## Шаблон для работы правильного 1С разработчика

[![Join the chat at https://gitter.im/silverbulleters/vanessa-bootstrap](https://badges.gitter.im/Join%20Chat.svg)](https://gitter.im/silverbulleters/vanessa-bootstrap?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)

* содержит выработанную и обдуманную семантически структуру каталогов
* содержит необходимые утилиты для быстрого старта

текущая версия **0.2.5.4**

### Порядок установки

* прочитайте [Wiki](https://github.com/silverbulleters/vanessa-bootstrap/wiki/%D0%A0%D0%B5%D0%BA%D0%BE%D0%BC%D0%B5%D0%BD%D0%B4%D0%B0%D1%86%D0%B8%D0%B8-%D0%BF%D1%80%D0%B0%D0%B2%D0%B8%D0%BB%D1%8C%D0%BD%D1%8B%D0%BC-%D1%80%D0%B0%D0%B7%D1%80%D0%B0%D0%B1%D0%BE%D1%82%D1%87%D0%B8%D0%BA%D0%B0%D0%BC-1%D0%A1)
* склонируйте репозиторий в любое место, чтобы изучить каждый каталог и его предназначение
* не забудьте что git под Windows нужно устанавливать с git:bash интерпретатором

#### Порядок работы 1С специалиста

* как настоящий 1С специалист новую конфигурацию подключите к Хранилищу 1С (если вы разрабатываете внешнюю обработку, этот пункт можете пропустить)
* настройте на своем CI-сервере выгрузку исходников из [Хранилища 1С](http://v8.1c.ru/overview/DeveloperGroupp.htm) в git репозиторий с помощью [Yet Another Unpack](https://github.com/silverbulleters/vanessa-unpack) - выгрузку лучше всего настроить в каталог .\src\cf
* обратите внимание на проект [по исправлению артефактов 1С при выгрузке в исходники](https://github.com/pumbaEO/undiff1c/blob/master/src/undiff1c/undiff1c.py) - если вы видите странные изменения в xml файлах, значит необходимо описать пример в качестве запроса https://github.com/pumbaEO/undiff1c/issues, чтобы исключить проблемы выгрузки.
* обратите внимание на наличие у вас интерпретатора python для работы с [precommit1C](https://github.com/pumbaEO/precommit1c) - конечная цель чтобы в каталоге src находились все epf файлы анаходящиеся в репозитории, только в виде исходников.
* следите за обновлением шаблона
* подпишитесь на изменения WiKi в виде RSS канала https://github.com/silverbulleters/vanessa-bootstrap/wiki.atom

обратите внимание что:

* существует проект [gitsync](https://github.com/EvilBeaver/oscript-library/tree/develop/src/gitsync) реализованный на [oscript.io](http://oscript.io/)
* precommit1C на данный момент имеет версию как для Python, так и для **OScript** [precommit1C](https://github.com/xDrivenDevelopment/precommit1c/)

### Порядок инсталяции и обновления шаблона

инсталятор и скрипт обновления представляет собой скрипт на `bash`, поэтому, необходимо выполнить следующие команды

если еще нет репозитория `git`

```Shell
echo "Эти команды нужно выполнить в командной строке"
echo "для пользователей Windows используйте MSGIT:Bash (устанавливается вместе с MSGIT)"
git init ./my-new-repo
cd ./my-new-repo
curl -o bootstrap.in-up.sh -sSL https://raw.githubusercontent.com/silverbulleters/vanessa-bootstrap/master/bootstrap.in-up.sh
./bootstrap.in-up.sh
```
если репозиторий уже существует

```Shell
echo "Эти команды нужно выполнить в командной строке"
echo "для пользователей Windows используйте MSGIT:Bash (устанавливается вместе с MSGIT)"
cd ./my-existing-repo
curl -o bootstrap.in-up.sh -sSL https://raw.githubusercontent.com/silverbulleters/vanessa-bootstrap/master/bootstrap.in-up.sh
./bootstrap.in-up.sh
```

обновление шаблона происходит автоматически, для этого достаточно запустить скачанный скрипт еще раз

```Shell
echo "Эти команды нужно выполнить в командной строке"
echo "для пользователей Windows используйте MSGIT:Bash (устанавливается вместе с MSGIT)"
cd ./my-existing-repo-with-download-bootstrap
echo "Обновляю BootStrap"
./bootstrap.in-up.sh
```

откуда берется `curl` вы должны понять, если изучили каталог `.\tools\Windows` - ключевое слово для понимания `choco`

### Возможности доработки шаблона

* откройте issue - если вам не хватает кого-то каталога под ваши задачи
* войдите в чат Gitter - чтобы задать дополнительные вопросы
* сделайте fork, внесите изменения и выполните pull request с предлагаемыми вами изменениями (fork и pull request - это кнопки на GitHub.)

### Заметки на полях

* структура содержит адаптацию семантики каталогов для проектов на проекте Graphite от компании 1С (пример текущего каталога из проекта Graphite можно посмотреть тут https://github.com/1C-Company/dt-demo-configuration/tree/master/DemoConfDT

* для GitFlow в Windows мы советуем использовать программу SourceTree от компании Atlassian, для GitFlow в linux следует использовать расширение git-flow для git

* для управления релизами мы используем [Семантическое версионирование](http://semver.org/lang/ru/)
