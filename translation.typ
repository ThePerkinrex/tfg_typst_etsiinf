#let translations = (
	"es": (
		"toc": "Tabla de contenidos",
		"chapter": "Capítulo",
		"annex": "Anexo",
		"annex-pl": "Anexos",
		"acknowledgements": "Agradecimientos"
	),
	"en": (
		"toc": "Table of contents",
		"chapter": "Chapter",
		"annex": "Appendix",
		"annex-pl": "Appendices",
		"acknowledgements": "Acknowledgements"
	)
)

#let get-i8n(code) = context {translations.at(text.lang).at(code)}