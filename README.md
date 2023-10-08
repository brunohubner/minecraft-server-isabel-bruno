# Minecraft Server Isabel & Bruno

### Players:
- belcristinap
- Santhor01

#
### Alias para ligar e desligar o server:

```sh
alias mine-on="cd ~/www/minecraft-server-isabel-bruno && echo 'Ligando servidor Minecraft...\n' && docker-compose up -d && echo '\nServidor Minecraft ligado...'"

alias mine-off="cd ~/www/minecraft-server-isabel-bruno && echo 'Desligando servidor Minecraft...\n' && docker-compose stop && echo '\nServidor Minecraft desligado...\n' && echo 'Fazendo backup...' && cd data && zip -r $(date +"%Y-%m-%d_%H-%M-%S")_backup.zip * >> /dev/null && cp -r *_backup.zip /mnt/c/Users/bruno/GoogleDrive/Documentos-Google-Drive/backups/minecraft/server-isabel-bruno/ && rm -rf *_backup.zip && cd && echo 'Backup feito...'"
```