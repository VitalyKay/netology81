# Самоконтроль выполненения задания

1. Где расположен файл с `some_fact` из второго пункта задания?
>
> [group_vars/all/examp.yml](group_vars/all/examp.yml)
> 
2. Какая команда нужна для запуска вашего `playbook` на окружении `test.yml`?
> ```commandline
> ansible-playbook site.yml -i inventory/test.yml
> ```
3. Какой командой можно зашифровать файл?
> ```commandline
> ansible-vault encrypt group_vars/el/examp.yml
> ```
4. Какой командой можно расшифровать файл?
> ```commandline
> ansible-vault decrypt group_vars/el/examp.yml
> ```
5. Можно ли посмотреть содержимое зашифрованного файла без команды расшифровки файла? Если можно, то как?
> ```commandline
> ansible-vault view group_vars/el/examp.yml
> ```
6. Как выглядит команда запуска `playbook`, если переменные зашифрованы?
> ```commandline
> ansible-playbook site.yml -i inventory/prod.yml --ask-vault-pass
> ```
7. Как называется модуль подключения к host на windows?
> ```commandline
> ansible-doc -t connection -l | grep Microsoft
> psrp                           Run tasks over Microsoft PowerShell Remoting...
> winrm                          Run tasks over Microsoft's WinRM   
> ```
8. Приведите полный текст команды для поиска информации в документации ansible для модуля подключений ssh
> ```commandline
> ansible-doc -t connection plugin ssh
> ```
9. Какой параметр из модуля подключения `ssh` необходим для того, чтобы определить пользователя, под которым необходимо совершать подключение?
> 
> remote_user
> 

# Дополнительное задание
>
> [site.sh](site.sh)
> 