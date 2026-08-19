# Accessible Handout Template

This repository provides a simple handout template designed to generate accessible, PDFs (compliant with WCAG 2.1 AA). It uses a YAML frontmatter block to handle the basic layout, margins, and headers and relies on Pandoc and Typst to generate the final document.

---

## Background

In 2024, the U.S. Department of Justice updated Title II of the ADA, introducing new mandates for websites, digital content, and online applications.

Digital content produced by large public entities must meet [WCAG 2.1 AA](https://www.w3.org/TR/WCAG21/) by April 26, 2027.

---

## Prerequisites

To use this template, you will need to have the following installed on your system:

* **[Pandoc](https://pandoc.org/installing.html):** The document converter.
* **[Typst](https://typst.app/):** A markup-based typesetting system.

---

## Usage

**1. Clone Repository or Download Template**
Grab the `syllabus-template.md` file from this repository.

**2. Generate the Accessible PDF**
Run the following command in your terminal to compile the input file into a PDF. Be sure to replace `syllabus-template.md` with your input file path and `${outputPath}` with your desired output path (e.g., `output/example.pdf`).

```bash
pandoc pandoc simple-handout-template.md -s -o "output/example.pdf" --pdf-engine=typst --pdf-engine-opt=--pdf-standard=ua-1 --lua-filter=alt-text.lua
