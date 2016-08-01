# AXIES 年次大会 予稿集テンプレート

大学ICT推進協議会(AXIES)年次大会予稿集のテンプレートです.

- axies のページ: http://axies.jp/
- 年次大会の案内: http://axies.jp/ja/conf

## 利用方法

最新版は, https://github.com/takaakiaoki/axiesproc-latex より入手できます.

- jsaxiesproc.cls
- axiesproc-sample.tex

をダウンロードし, axiesproc-sample.tex を(適当にリネーム, 内容を変更した後)コンパイルします.

## 動作環境

TeXLive 2015 on Windows で動作環境を行っています. 

    > platex -sjis-terminal -kanji=utf8 axiesproc-sample.tex
    > (必要に応じ何回か上記コマンドを繰り返し)
    > dvipdfm axiesproc-sample.dvi
    > (start axiesproc-sample.pdf でプレビュー)

## ライセンス

ライセンスはまだ決まっていません. ご自由にご利用ください.

## 免責事項, 作者について

無保証です. また, AXIESが公式にサポートするものではありません.

また, 改善点等ございましたらお教えください. 随時改善するか, コミット権を差し上げます.

Takaaki AOKI, Kyoto Univ.
