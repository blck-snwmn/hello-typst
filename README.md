# hello-typst

A sample project for creating Japanese documents with Typst.

`main.typ` combines Japanese text, equations, a table, an SVG chart, and a generated image into a single PDF. The chart is generated automatically from CSV data.

## Setup

This project uses [mise](https://mise.jdx.dev/) to manage the Typst version.

```sh
mise install
```

## Generate the SVG chart and PDF

```sh
mise run build
```

The build runs in the following order:

1. Read `data/monthly-documents.csv`
2. Generate `assets/monthly-documents.svg`
3. Generate `output/pdf/main.pdf`

To update the chart values, edit `data/monthly-documents.csv` and run `mise run build` again.
