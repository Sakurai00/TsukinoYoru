#!/bin/bash

MISSKEY_DIR="$HOME/tsukinoyoru/misskey"
BACKUP_DIR=backup

DB_SERVICE=db
USERNAME=sakurai

cd "${MISSKEY_DIR}"

if [ ! -e BACKUP_DIR ]; then
    mkdir -p ${BACKUP_DIR};
fi

DUMPFILE_NAME=misskey_bk_`date "+%Y%m%d"`.sql.gz

docker compose exec ${DB_SERVICE} pg_dumpall -U ${USERNAME} | gzip -c > ${BACKUP_DIR}/${DUMPFILE_NAME}

# sudo mount -t nfs 192.168.0.20:/volume1/misskey_bk /mnt/nfs
cp ${BACKUP_DIR}/${DUMPFILE_NAME} /mnt/nfs/
