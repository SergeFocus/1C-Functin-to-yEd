## Шаблон для работы правильного 1С разработчика

[![Join the chat at https://gitter.im/silverbulleters/vanessa-bootstrap](https://badges.gitter.im/Join%20Chat.svg)](https://gitter.im/silverbulleters/vanessa-bootstrap?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)

* содержит выработанную и обдуманную семантически структуру каталогов
* содержит необходимые утилиты для быстрого старта

текущая версия **0.2.5.2**

### Порядок установки

* прочитайте [Wiki](https://github.com/silverbulleters/vanessa-bootstrap/wiki/%D0%A0%D0%B5%D0%BA%D0%BE%D0%BC%D0%B5%D0%BD%D0%B4%D0%B0%D1%86%D0%B8%D0%B8-%D0%BF%D1%80%D0%B0%D0%B2%D0%B8%D0%BB%D1%8C%D0%BD%D1%8B%D0%BC-%D1%80%D0%B0%D0%B7%D1%80%D0%B0%D0%B1%D0%BE%D1%82%D1%87%D0%B8%D0%BA%D0%B0%D0%BC-1%D0%A1)
* склонируйте репозиторий

```Shell
git clone https://github.com/silverbulleters/vanessa-bootstrap.git <название-вашего-продукта-1С>
```
* подключите репозиторий к своему git серверу (Vanessa Git, GitHub, Bitbucket, GitLab, etc)

```Shell
cd <название-вашего-продукта-1С>
git remote set-url origin git://new.url.here
```

* не забудьте подписаться на обновление шаблона

```Shell
git remote set-url bootstrap https://github.com/silverbulleters/vanessa-bootstrap.git
```
теперь вы можете начинать разрабатывать по правильному и быть подписанными на любые изменения.

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

### Порядок обновления шаблона

включите стратегию слияния для текущего репозитория - чтобы изменения шаблона каталогов не мешали в вашем проекте тем изменениям, которые вы сделали в процессе реальной работы

```Shell
git config --local merge.ours.driver true
```

Чтобы получить изменения каталога, получите изменения, без фиксации:

```Shell
git pull --no-commit bootstrap master
```

все изменения шаблона помещаются в таком случае как незафиксированные изменения, поэтому всегда можно откатиться в случае конфликтов файлов

### Если вы уже ведете разработку на 1С при помощи Git репозиториев

создайте как это положено в **git-flow** отдельную тематическую ветку

```Shell
git-flow new-feature new-catalog-structure
```

добавьте новый внешний репозиторий, как это указано выше

```Shell
git remote add bootstrap https://github.com/silverbulleters/vanessa-bootstrap.git
```

~~~
здесь необходимо обратить внимание на функционал "Стратегий объединения" (merge strategies)
для этого используется файл .gitattributes в котором указано как файлы не объединять из основного репозитория с шаблоном
~~~

текст файла .gitatrributes (конечно его надо предварительно создать в корне репозитория, а также обратите внимание - все эти файлы должны уже существовать в вашем репозитории)

```
README.md merge=ours
.gitmodules merge=ours
.gitignore merge=ours
.gitattributes merge=ours
LICENSE merge=ours
```
получите изменения из нового внешнего репозитория без применения изменений

```Shell
git fetch bootstrap
```

включите стратегию слияния для текущего репозитория - чтобы изменения шаблона каталогов не изменяли ваш проект

```Shell
git config --local merge.ours.driver true
```
и получаем изменения шаблона

```Shell
git pull --no-commit bootstrap master
```

все изменения шаблона помещаются в таком случае как незафиксированные изменения, поэтому всегда можно откатиться в случае конфликтов файлов

Для работы с именами файлов на русском, украинском, белорусском или на других языках не сипользующих латиницу в качестве алфавита, используйте следующю команду

```Shell
git config --local core.quotepath false
```

### Возможности доработки шаблона

* откройте issue - если вам не хватает кого-то каталога под ваши задачи
* войдите в чат Gitter - чтобы задать дополнительные вопросы
* сделайте fork, внесите изменения и выполните pull request с предлагаемыми вами изменениями (fork и pull request - это кнопки на GitHub.)

### Заметки на полях

* структура содержит адаптацию семантики каталогов для проектов на проекте Graphite от компании 1С (пример текущего каталога из проекта Graphite можно посмотреть тут https://github.com/1C-Company/dt-demo-configuration/tree/master/DemoConfDT

* для GitFlow в Windows мы советуем использовать программу SourceTree от компании Atlassian, для GitFlow в linux следует использовать расширение git-flow для git

* для управления релизами мы используем [Семантическое версионирование](http://semver.org/lang/ru/)
