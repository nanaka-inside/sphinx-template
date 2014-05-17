これは何
==========

評論文章系同人誌を作るときのドキュメントテンプレートです。
[第7開発セクション](https://sites.google.com/site/dai7sec/)で同人誌を作っていた時に使っていたものをテンプレートとして切り出しました。
RSTで書かれています。付属のスクリプト(sh)でPDFをビルドすることが出来ます。
ビルドするとこのようなPDFが出来上がるはずです。

* https://www.dropbox.com/s/ylmyhi6qujjxz3l/sample-document.pdf


構成とビルド
============

ディレクトリ構成
----------------

* sphinxに関連するファイルは conf.pyとMakefileです
* ビルドされるファイルはは index.rstを起点に始まります
 * first.rst, second.rstがまず分岐して、そのファイルの中に原稿ファイルをインクルードします
 * 特集記事、その他の記事で分けた買ったので first.rst, second.rstがあります
 * 階層をフラットにしてしまっても良いと思います。お任せします
* sample.rstに書式ひと通りかいてあるので参考にしてください

ビルドに必要なもの
------------------

* Linux系OS (CentOS 5.7でビルドしてます)
* sphinx 1.1.3 (で動作しました)
* Tex Live 2012 (で動作しました)
 * テフライブ! (書きたかっただけ)


ビルド方法
----------

* RSTを適当に編集します。sample.rstが入っているのでそのままビルドコマンドを実行しておｋ
* ビルドスクリプトを実行します。先述のsample.rstもいっしょにびるどされます
```
$ ./latex-build.sh
```
* 内部で sphinx の make platex 経由でtexファイルが作られ、platex, dvipdfmxコマンドを経て _build/latex/ ディレクトリに document.pdf　が生成されます
 * ファイル名を変更したいときはshの内容を書き換えてください
 * conf.pyも書き直さないとだめかも

仕様
=====

* PDFは B5サイズ、モノクロで出力されます
 * B5変型サイズにしたいときはこちらを参照してください
  * https://github.com/nanaka-inside/kaisetsu-CoreUtils/blob/master/conf.py#L189

ついでに
========

* make epubとか打つこともできて、epubファイルも生成されます
* RSTファイルはUTF8で書かないと文字化けが発生するので、to-utf-8.shがついてます
 * ファイル名を引数にとってやってください
 * nkfコマンドを使っています
* latex-build.shをしたとき、htmlも生成するようにしているので、さくっと読みたいならこちらを見てください
 * _build以下をwebサーバのdocment rootに入れておくとといい感じ
* sample.rstにrstのサンプルが入っているので適宜頑張ってください

注意
====

* 画像の挿入が面倒なので気をつけてね！
 * epsにしないとビルドがコケます
 * 関連してblockdiagの画像挿入がうまくいかないかも
* 印刷屋に入稿するためのPDFを生成するとき、フォントの埋め込み問題に注意してください
 * くわしくはこちらで　http://www.fugenji.org/~thomas/texlive-guide/font_setup.html
* 目次や索引は付きません
 * がんばって！！（おい！！

FAQ
====

* B5以外のファイルも出力できるようにしたいとき
 * latex-build.shでplatexの出力時にファイル指定してます。conf.pyでもやってますけどまあ適当に
* 文字サイズを変更したいとき
 * conf.pyを見てください。10ptを指定してあるそれがそれです


だれかにやって欲しいこと
========================

* Markdown形式のファイルが混じっていてもよろしくビルドしてくれるといいなぁ
* リポジトリにconf.pyとMakefileが入っています。sphinx-quickbuildで生成したほうが早いときもあります
* PNGで画像突っ込んだからconvertコマンド引っ掛けてよろしくビルドして欲しい
* issueに積めよΣ

つまり
=======

ここから本題です。このテンプレートの肝は、conf.pyのpreambleとlatex-build.shです。それ以外は飾りです。
sphinxのドキュメントの構成・仕組みを知っているのであれば、sphinx-quickstartを行ったあと、出来上がったconf.pyとこのリポジトリのconf.pyをdiffした方が早いと思います。

ここまでの経緯
==============

このテンプレートができるに至った経緯です。

* http://tboffice.hatenablog.jp/entry/2012/12/23/024004
* https://gist.github.com/uchida/4385759
* http://tboffice.hatenablog.jp/entry/2013/01/08/035429

