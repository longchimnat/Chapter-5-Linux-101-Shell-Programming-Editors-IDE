#!/bin/bash
SRC=~/lab13
BACKUP=~/lab13_backup
mkdir -p $BACKUP

cp $SRC/*.txt $BACKUP/                             # (3) sao chép file .txt
echo "Backup luc `date`"  >  $BACKUP/backup.log    # (4) ghi log
ls $BACKUP                >> $BACKUP/backup.log    # ghi thêm danh sách (dùng >> )
echo "Backup xong luc `date`"                      # (5) in ra màn hình
