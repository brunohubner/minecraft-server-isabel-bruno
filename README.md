# Minecraft Server Isabel & Bruno

### Players:
- belcristinap
- Santhor01

#
### Alias para ligar e desligar o server:

```sh
alias start-isabel-bruno-mine-server="docker-compose -f ~/www/minecraft-server-isabel-bruno/docker-compose.yml up -d"
alias stop-isabel-bruno-mine-server="cd ~/www/minecraft-server-isabel-bruno && docker-compose stop && echo 'Fazendo backup...' && cd data && rm -rf logs/**/*.log.gz && zip -r $(date +"%Y-%m-%d_%H-%M-%S")_backup.zip * >> /dev/null && cp -r *_backup.zip /mnt/d/backups/minecraft/server-isabel-bruno && rm -rf *_backup.zip && cd && echo 'Backup finalizado com sucesso!' && cd"

alias mine-on="start-isabel-bruno-mine-server"
alias mine-off="stop-isabel-bruno-mine-server"
```