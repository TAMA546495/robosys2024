#!/bin/bash
# SPDX-FileCopyrightText: 2024 YUUKI TAMADA
# SPDX-License-Identifier: BSD-3-Clause

ng () {
    echo "${1}行目が違うよ"
    res=1
}

res=0

### 正常な入力 ###
# スロット回数を5回で実行した場合の出力を確認
out=$(echo 5 | python3 slot)
# 正しい回数分の出力があるか確認（5行の結果が出力されるはず）
if [[ $(echo "$out" | wc -l) -ne 5 ]]; then
    ng "$LINENO"
fi

# 結果が表示されることを確認（スロットの絵文字が含まれる）
if [[ ! "$out" =~ "🍒" && ! "$out" =~ "🍋" && ! "$out" =~ "🍊" && ! "$out" =~ "🔔" && ! "$out" =~ "7" && ! "$out" =~ "💎" ]]; then
    ng "$LINENO"
fi

### 異常な入力 ###

# 1~10以外の数字を入力した場合（例えば11）
out=$(echo 11 | python3 slot)
if [[ "$?" -eq 0 ]]; then
    ng "$LINENO"
fi

# 無効な入力（例えば文字列）
out=$(echo あ | python3 slot)
if [[ "$?" -eq 0 ]]; then
    ng "$LINENO"
fi

# 入力なし
out=$(echo | python3 slot)
if [[ "$?" -eq 0 ]]; then
    ng "$LINENO"
fi

[ "$res" -eq 0 ] && echo OK

exit $res

