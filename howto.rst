
phinx chapterの取り決め
=======================

参照：http://sphinx-users.jp/gettingstarted/make_project.html#toctree

先に挙げた、3つの例では、セクションのタイトルとして、 = 記号を使っていることが分かります。Sphinxでは、 #, \*,=, -, ^, ~, " などの記号を使うことができます。記号は上下に記号を並べる方式と、アンダーラインのようにする方式の2つがあります。記号の種類と書き方(上下、下のみ)で色々なフォーマットが実現できますが、1つのファイル内の登場順で、レベルが決まり、階層化されます。上記のサンプルでは、子供ファイルのタイトル(= の上下)がレベル1, 内容と書かれている部分(= の下だけ)がレベル2になります。
慣習的にはURLを参照　http://sphinx.shibu.jp/rest.html#id9 

通常は、文字の種類と見出しのレベルは関係ないため、どの文字でも使用することができます。使用していない種類のアンダーラインが出てくると、見出しのレベルが一段変わる、というルールになっています。参考までに、Pythonドキュメントで使っている慣例について紹介しておきます

# 部: オーバーライン付き
* 章: オーバーライン付き
  =, セクション
  -, サブセクション
  ^, サブサブセクション
  ", パラグラフ
