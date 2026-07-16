#set page(
  width: 180mm,
  height: 95mm,
  margin: 0mm,
  fill: none,
)
#set text(
  font: sys.inputs.at("font", default: "Hiragino Sans"),
  lang: "ja",
  fill: rgb("17233c"),
)

#let rows = csv("../data/monthly-documents.csv", row-type: dictionary)
#let maximum = calc.max(..rows.map(row => int(row.value)))

#rect(
  width: 180mm,
  height: 95mm,
  radius: 4mm,
  fill: rgb("f7f9fc"),
  inset: (x: 10mm, y: 7mm),
)[
  #grid(
    columns: (1fr, auto),
    align: (left, horizon),
    text(size: 17pt, weight: "bold")[月別ドキュメント生成数],
    text(size: 8pt, fill: rgb("71809d"))[CSVから自動生成],
  )

  #v(5mm)

  #grid(
    columns: rows.len(),
    gutter: 5mm,
    align: bottom + center,
    ..rows.map(row => {
      let value = int(row.value)
      let bar-height = 48mm * value / maximum

      stack(
        dir: ttb,
        spacing: 1.5mm,
        text(size: 9pt, weight: "bold")[#value],
        rect(
          width: 16mm,
          height: bar-height,
          radius: 2mm,
          fill: rgb("4169df"),
        ),
        text(size: 9pt, fill: rgb("465570"))[#row.month],
      )
    }),
  )
]
