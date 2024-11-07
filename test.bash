#!/bin/bash
# SPDX-FileCopyrightText: 2024 YUUKI TAMADA


### 正常な入力 ###

out=$(seq 5 | ./plus)
[ "${out}" = 15 ] || ng "$LINENO"
### 異常な入力　###
out=$(echo あ  | ./plus)
[ "$?" = 1 ] || ng "$LINENO"
[ "${out}" = "" ] || ng "$LINENO"

out=$(echo | ./plus)
[ "$?" = 1 ]  || ng "$LINENO"
[ "${out}" = "" ] || ng "$LINENO"

[ "${res}" = 0 ] && echo OK

exit $res
