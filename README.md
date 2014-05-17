これは何
==========

評論文章系同人誌を作るときのドキュメントテンプレートです。
[第7開発セクション](https://sites.google.com/site/dai7sec/)で同人誌を作っていた時に使っていたものをテンプレートとして切り出しました。
RSTで書かれています。付属のスクリプト(sh)でPDFをビルドすることが出来ます。
ビルドするとこのようなPDFが出来上がるはずです。

* https://www.dropbox.com/s/ylmyhi6qujjxz3l/sample-document.pdf


ビルドに必要なもの
==================

* Linux系OS (CentOS 5.7でビルドしてます)
* sphinx 1.1.3 (で動作しました)
* Tex Live 2012 (で動作しました)
 * テフライブ! (書きたかっただけ)


ビルド方法
==========

* RSTを適当に編集します。sample.rstが入っているのでそのままビルドコマンドを実行しておｋ
* ビルドスクリプトを実行します
```
$ ./latex-build.sh
```
* 内部で sphinx の make platex 経由でtexファイルが作られ、platex, dvipdfmxコマンドを経て _build/latex/ ディレクトリに document.pdf　が生成されます
* htmlも生成するようにしているので、さくっと読みたいならこちらを見てください


仕様
=====

* PDFは B5サイズ、モノクロで出力されます
 * B5変型サイズにしたいときはこちらを参照してください
  * https://github.com/nanaka-inside/kaisetsu-CoreUtils/blob/master/conf.py#L189

ついでに
========

* make epubとか打つこともできて、ファイルも生成されます
* 画像の挿入が面倒なので気をつけてね！
 * epsにしないとビルドがコケます
 * blockdiagの画像挿入がうまくいかないかも
* RSTファイルはUTF8で書かないと文字化けが発生するので、to-utf-8.shがついてます
 * nkfコマンドを使っています

なお、こうしたほうが良い模様
=============================

* B5以外のファイルも出力できるようにしたい
 * latex-build.shでplatexの出力時にファイル指定してます。conf.pyでもやってますけどまあ適当に
* Markdown形式のファイルが混じっていてもよろしくビルドしてくれるといいなぁ
* conf.pyが入っています。sphinx-quickbuildで生成したほうが早いときもあります
* PNGで画像突っ込んだからconvertコマンド引っ掛けてよろしくビルドして欲しい
* issueに積めよΣ

ここまでの経緯
==============

このテンプレートができるに至った経緯です。

* http://tboffice.hatenablog.jp/entry/2012/12/23/024004
* https://gist.github.com/uchida/4385759
* http://tboffice.hatenablog.jp/entry/2013/01/08/035429

