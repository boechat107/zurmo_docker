#!/bin/bash

set -e

echo "Job started: $(date)"

TIMESTAMP=$(date +%F_%H-%M-%S)
FILEPATH=/var/backups/backupermysql_${TIMESTAMP}.sql.gz

/usr/bin/mysqldump -h mysql --databases ${DATABASE} --single-transaction | \
        gzip > ${FILEPATH}

echo "Job finished: $(date)"
