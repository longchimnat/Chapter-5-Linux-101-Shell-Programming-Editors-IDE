#!/bin/bash
# Bao cao he thong don gian
HOTEN="Nguyen Van A"
MSSV="SV001"
OUT="ketqua.txt"

echo "===== BAO CAO HE THONG =====" > $OUT
echo "Ho ten : $HOTEN"            >> $OUT
echo "MSSV   : $MSSV"             >> $OUT
echo "Thoi gian: `date`"          >> $OUT
echo "Nguoi dung: `whoami`"       >> $OUT
echo "Thu muc  : `pwd`"           >> $OUT
echo "--- Danh sach file ---"     >> $OUT
ls -l                             >> $OUT
echo "So luong file: `ls | wc -l`" >> $OUT
