### Каталог tools\windows

предназначен для хранения утилит необходимых для разработчика 1С, разрабатывающего решение на платформе Windows

для автоматического обновления и настройки необходимо

* открыть Windows Power Shell в режиме администратора
* установить chocolatey

для автоматизированного обновления лучше всего использовать следующую конструкцию

```Shell
choco install --force -y curl
curl -o env-install.cmd -sSL https://raw.githubusercontent.com/silverbulleters/vanessa-bootstrap/master/tools/windows/env-install.cmd
./env-install.cmd
```
