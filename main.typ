#set document(title: "はじめてのTypst")
#set page(
  paper: "a4",
  margin: 24mm,
)
#set text(
  font: "Hiragino Sans",
  lang: "ja",
  size: 10.5pt,
)
#set heading(numbering: "1.")

= はじめてのTypst

Typstは、文章とレイアウトをテキストで記述し、PDFなどへ変換できる組版システムです。

== このサンプルで確認できること

- 日本語の文章
- 見出しと箇条書き
- 数式
- 表
- SVGグラフ
- 生成画像

== 数式

二次方程式 $a x^2 + b x + c = 0$ の解は、次のように表せます。

$ x = (-b plus.minus sqrt(b^2 - 4 a c)) / (2 a) $

== 表

#table(
  columns: (1fr, 2fr),
  inset: 8pt,
  stroke: 0.5pt + luma(75%),
  table.header([*要素*], [*内容*]),
  [入力], [Typstで記述した `main.typ`],
  [出力], [組版された `output/pdf/main.pdf`],
)

== SVGグラフ

SVGはベクター形式なので、PDF内で拡大しても線や文字がぼやけません。

#figure(
  image("assets/monthly-documents.svg", width: 100%),
  caption: [月別ドキュメント生成数（サンプルデータ）],
)

#pagebreak()

== 生成画像

生成したPNG画像も、グラフと同じように `image` 関数で配置できます。

#figure(
  image("assets/document-workflow.png", width: 100%),
  caption: [文章・グラフ・画像を1つの文書へまとめるワークフロー],
)

このように、用途に応じてSVGとPNGを使い分けながら、Typstで1つのPDFへ組版できます。
