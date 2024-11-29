#!/bin/bash 
# SPDX-FileCopyrightText: 2024 YUUKI TAMADA

ng () {
    echo "${1}行目が違うよ"
    res=1
}

res=0

### 正常な入力 ###

# スロット回数を5回で実行した場合の出力を確認
out=$(echo 5 | python3 slot)
if [[ ! "${out}" =~ "回数: 5回" ]]; then
    ng "$LINENO"
fi

# 結果が表示されることを確認（3つの絵文字が出力される）
if [[ ! "${out}" =~ "🍒" && ! "${out}" =~ "🍋" && ! "${out}" =~ "🍊" && ! "${out}" =~ "🔔" && ! "${out}" =~ "７" && ! "${out}" =~ "💎" ]]; then
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

[ "$res" = 0 ] && echo OK

exit $res

