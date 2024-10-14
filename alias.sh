export MC_SERVER_PATH="/home/bruno/www/minecraft-server-isabel-bruno"
export BACKUP_MC_SERVER_PATH="/mnt/d/backups/minecraft/server-isabel-bruno"

alias start-minecraft-server-isabel-bruno="docker-compose -f $MC_SERVER_PATH/docker-compose.yml up -d"
alias backup-minecraft-server-isabel-bruno="cd $MC_SERVER_PATH && echo 'Fazendo backup...' && cd data && rm -rf logs/**/*.log.gz ; zip -r $(date +"%Y-%m-%d_%H-%M-%S")_backup.zip * >> /dev/null && cp -r *_backup.zip $BACKUP_MC_SERVER_PATH && rm -rf *_backup.zip && cd && echo 'Backup finalizado com sucesso!' && cd"
alias stop-minecraft-server-isabel-bruno="cd $MC_SERVER_PATH && docker-compose stop && backup-minecraft-server-isabel-bruno"

alias mine-rcon="docker exec -i minecraft-server-isabel-bruno rcon-cli"
alias mine-backup="backup-isabel-bruno-mine-server"
alias mine-on="start-minecraft-server-isabel-bruno"
alias mine-off="stop-minecraft-server-isabel-bruno"
