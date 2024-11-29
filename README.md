# robosys2024
ロボットシステム学授業用

# slotコマンド
[![test](https://github.com/TAMA546495/robosys2024/actions/workflows/test.yml/badge.svg)](https://github.com/TAMA546495/robosys2024/actions/workflows/test.yml)

## 必要なソフトウェア
- Python
  - テスト済み:3.7~3.11

## テスト環境
- ubuntu20.04

## 概要

- このコマンドは入力された１～１０の回数をもとにスロットを回し、結果を出力するものです。
- 自分の運勢を確かめることが出来ます。
- １～１０以外を入力するとエラーとなり終了ステータスが１で返されます。

## 使用方法

- 以下のリポジトリをクローンして、ディレクトリを移動します。
```
$ git clone https://github.com/TAMA546495/robosys2024.git
$ cd robosys2024
```

- コマンドは実行するときは以下の権限を与えてから実行してください。
```
$ chmod +x slot
```

- コマンドを実行する時は以下のようにします。
```
$ ./slot
```

## 実行例
```
$ ./slot
スロット開始!
回数を入力してください。1~10回まで: 1
回数: 1回
🍒  🍋  💎
ハズレ

終了
```

```
$ ./slot
スロット開始!
回数を入力してください。1~10回まで: 3
回数: 3回
７  ７  ７
ジャックポット!!!!!!

🍒  🍊  ７
ハズレ

🍒  💎  🍋
ハズレ

終了
```

```
$ ./slot
スロット開始!
回数を入力してください。1~10回まで: 21
エラー: 1~10の範囲で入力してください。
```

## ライセンス
- このソフトウェアパッケージは、3条項BSDライセンスの下、再頒布および使用が許可されます。


## クレジット

- このパッケージのコードは、下記のスライド（CC-BY-SA 4.0 by Ryuichi Ueda）のものを、本人の許可を得て自身の著作としたものです。
- [ryuichiueda/my_slides robosys_2022](https://github.com/ryuichiueda/slides_marp/tree/169907a7645812969a347a91caed6246febd6bf1/robosys2024)

- © 2024 Yuuki Tamada

 
